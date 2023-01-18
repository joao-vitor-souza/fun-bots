from peewee import *

database = SqliteDatabase("mod.db")


class BaseModel(Model):
    class Meta:
        database = database


class FbPermissions(BaseModel):
    guid = TextField(primary_key=True, column_name="GUID")
    player_name = TextField(column_name="PlayerName")
    value = IntegerField(column_name="Value")
    time = DateTimeField(column_name="Time")

    class Meta:
        table_name = "FB_Permissions"
        columns_name = ["GUID", "Playername", "Value", "Time"]


class FbModel(BaseModel):
    key = TextField(primary_key=True, column_name="Key")
    value = IntegerField(column_name="Value")
    time = DateTimeField(column_name="Time")

    class Meta:
        columns_name = ["Key", "Value", "Time"]


class FbConfigTrace(FbModel):
    class Meta:
        table_name = "FB_Config_Trace"


class FbSettings(FbModel):
    class Meta:
        table_name = "FB_Settings"


def make_table_name(model_class):
    return model_class.__name__ + "_table"


class MapTable(BaseModel):
    path_index = IntegerField(column_name="pathIndex")
    point_index = IntegerField(column_name="pointIndex")
    trans_x = FloatField(column_name="transX")
    trans_y = FloatField(column_name="transY")
    trans_z = FloatField(column_name="transZ")
    input_var = IntegerField(column_name="inputVar")
    data = TextField()

    class Meta:
        table_function = make_table_name
        columns_name = [
            "pathIndex",
            "pointIndex",
            "transX",
            "transY",
            "transZ",
            "inputVar",
            "data",
        ]
