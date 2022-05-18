.class public Lcn/nubia/notepad/widget/NotePadWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "NotePadWidgetService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    new-instance v0, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;

    invoke-virtual {p0}, Lcn/nubia/notepad/widget/NotePadWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcn/nubia/notepad/widget/NotePadRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
