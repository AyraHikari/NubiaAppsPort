.class Lcn/nubia/calendar/deftcontroller/UpdateApkController$3;
.super Ljava/lang/Object;
.source "UpdateApkController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/deftcontroller/UpdateApkController;->doInstall(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/deftcontroller/UpdateApkController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    .prologue
    .line 240
    iput-object p1, p0, Lcn/nubia/calendar/deftcontroller/UpdateApkController$3;->this$0:Lcn/nubia/calendar/deftcontroller/UpdateApkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    return-void
.end method
