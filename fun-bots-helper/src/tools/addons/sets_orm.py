"""This module provides functions that interact with the mod database."""

import os
from typing import List

from loguru import logger
from models import BaseModel, MapTable
from peewee import Model


def set_permission_config_files(models: List[Model]) -> None:
    """Write permission_and_config files out of the database.

    Args:
        - models - A list containing the models of settings tables

    Returns:
        None
    """
    dest_folder = "permission_and_config"
    if not os.path.exists(dest_folder):
        os.mkdir(dest_folder)

    for model in models:
        if not model.table_exists():
            logger.warning(f"{model._meta.table_name} table not found!")
        else:
            with open(
                dest_folder + "/" + model._meta.table_name + ".cfg",
                "w",
                encoding="utf-8",
            ) as out_file:
                header = model._meta.columns_name
                out_file.write(";".join(header) + "\n")
                query = (
                    model.select().order_by(model.player_name)
                    if model._meta.table_name == "FB_Permissions"
                    else model.select().order_by(model.key)
                )
                for instance in query:
                    out_list = (
                        [
                            instance.guid,
                            instance.player_name,
                            instance.value,
                            instance.time,
                        ]
                        if model._meta.table_name == "FB_Permissions"
                        else [
                            instance.key,
                            instance.value,
                            instance.time,
                        ]
                    )
                    out_file.write(
                        ";".join(list(map(lambda x: str(x), out_list))) + "\n"
                    )

                logger.info("Export " + model._meta.table_name)


def set_permission_config_db(models: List[Model]) -> None:
    """Write permission and configuration tables to the database, out of permission_and_config.

    Args:
        - models - A list containing the models of settings tables

    Returns:
        None
    """
    source_folder = "permission_and_config"
    file_names = os.listdir(source_folder)

    for model in models:
        model.drop_table()
        model.create_table()

    for file_name in file_names:
        table_name = file_name.split(".")[0]
        logger.info("Import " + table_name)

        for table in models:
            if table._meta.table_name == table_name:
                model = table
                break

        with open(source_folder + "/" + file_name, "r", encoding="utf-8") as in_file:
            instances = [
                line.replace("\n", "").split(";") for line in in_file.readlines()[1:]
            ]
            data = [
                {
                    "guid": instance[0],
                    "player_name": instance[1],
                    "value": instance[2],
                    "time": instance[3],
                }
                if table_name == "FB_Permissions"
                else {
                    "key": instance[0],
                    "value": instance[1],
                    "time": instance[2],
                }
                for instance in instances
            ]
            model.insert_many(data).execute()


def set_traces_files() -> None:
    """Write trace mapfiles out of the database.

    Args:
        None

    Returns:
        None
    """
    dest_folder = "mapfiles"
    if not os.path.exists(dest_folder):
        os.mkdir(dest_folder)

    table_names = BaseModel._meta.database.get_tables()
    [
        table_names.remove(fb_table)
        for fb_table in [
            "FB_Permissions",
            "FB_Config_Trace",
            "FB_Settings",
        ]
    ]

    for table_name in table_names:
        map_name = table_name.replace("_table", "")
        file_name = map_name + ".map"
        with open(dest_folder + "/" + file_name, "w", encoding="utf-8") as out_file:
            model = type(map_name, (MapTable,), {})
            header = model._meta.columns_name
            out_file.write(";".join(header) + "\n")
            query = model.select().order_by(model.path_index, model.point_index)
            for instance in query:
                out_list = [
                    instance.path_index,
                    instance.point_index,
                    format(instance.trans_x, ".6f"),
                    format(instance.trans_y, ".6f"),
                    format(instance.trans_z, ".6f"),
                    instance.input_var,
                    instance.data,
                ]
                out_file.write(";".join(list(map(lambda x: str(x), out_list))) + "\n")
            logger.info("Export " + table_name)


def set_traces_db() -> None:
    """Write trace tables to the the database, out of mapfiles folder.

    Args:
        None

    Returns:
        None
    """
    source_folder = "mapfiles"
    file_names = os.listdir(source_folder)

    for file_name in file_names:
        table_name = file_name.split(".")[0]
        map_table = type(table_name, (MapTable,), {})
        map_table.drop_table()
        map_table.create_table()

        logger.info("Import " + table_name)
        with open(source_folder + "/" + file_name, "r", encoding="utf-8") as in_file:
            instances = [line.split(";") for line in in_file.readlines()[1:]]
            data = [
                {
                    "path_index": int(instance[0]),
                    "point_index": int(instance[1]),
                    "trans_x": float(instance[2]),
                    "trans_y": float(instance[3]),
                    "trans_z": float(instance[4]),
                    "input_var": int(instance[5]),
                    "data": instance[6].replace("\n", "") if len(instance) == 7 else "",
                }
                for instance in instances
            ]
            map_table.insert_many(data).execute()
