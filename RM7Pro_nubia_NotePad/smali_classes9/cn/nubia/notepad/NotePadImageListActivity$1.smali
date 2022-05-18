.class Lcn/nubia/notepad/NotePadImageListActivity$1;
.super Landroid/database/ContentObserver;
.source "NotePadImageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageListActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageListActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageListActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadImageListActivity;->access$100(Lcn/nubia/notepad/NotePadImageListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->isSingleReverseOpen(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadImageListActivity;->access$002(Lcn/nubia/notepad/NotePadImageListActivity;Z)Z

    .line 127
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$200(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/view/NotePadGridView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadImageListActivity;->access$000(Lcn/nubia/notepad/NotePadImageListActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/view/NotePadGridView;->setSingleReverseOpen(Z)V

    .line 128
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$1;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$300(Lcn/nubia/notepad/NotePadImageListActivity;)V

    .line 129
    return-void
.end method
