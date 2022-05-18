.class public Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;
.super Ljava/lang/Object;
.source "SelectDateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/SelectDateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public outterHandler:Landroid/os/Handler;

.field public workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 35
    iput-object v0, p0, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->outterHandler:Landroid/os/Handler;

    return-void
.end method
