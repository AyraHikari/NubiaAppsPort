.class public Lcn/nubia/calendar/deftcontroller/WeekController$InitData;
.super Ljava/lang/Object;
.source "WeekController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/deftcontroller/WeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitData"
.end annotation


# instance fields
.field public fragment_manager:Landroid/app/FragmentManager;

.field public main_pane:Landroid/widget/FrameLayout;

.field public outterHandler:Landroid/os/Handler;

.field public working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
