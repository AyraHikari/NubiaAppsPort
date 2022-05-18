.class Lcn/nubia/weather/model/BaseModel$1;
.super Lcn/nubia/weather/jsonbean/BaseJsonBean;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/weather/model/BaseModel;->getBean()Lcn/nubia/weather/jsonbean/BaseJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/model/BaseModel;


# direct methods
.method constructor <init>(Lcn/nubia/weather/model/BaseModel;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/model/BaseModel;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/weather/model/BaseModel$1;->this$0:Lcn/nubia/weather/model/BaseModel;

    invoke-direct {p0}, Lcn/nubia/weather/jsonbean/BaseJsonBean;-><init>()V

    return-void
.end method
