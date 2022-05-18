.class Lcn/nubia/music/activity/PlayListDetailActivity$4;
.super Ljava/lang/Object;
.source "PlayListDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/PlayListDetailActivity;->deletePlayList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/app/AlertDialog;

.field final synthetic b:Lcn/nubia/music/activity/PlayListDetailActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/PlayListDetailActivity;Lcn/nubia/commonui/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->b:Lcn/nubia/music/activity/PlayListDetailActivity;

    iput-object p2, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->a:Lcn/nubia/commonui/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcn/nubia/music/activity/PlayListDetailActivity$4$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/PlayListDetailActivity$4$1;-><init>(Lcn/nubia/music/activity/PlayListDetailActivity$4;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->b:Lcn/nubia/music/activity/PlayListDetailActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/PlayListDetailActivity;->setResult(I)V

    .line 192
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->a:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 193
    iget-object v0, p0, Lcn/nubia/music/activity/PlayListDetailActivity$4;->b:Lcn/nubia/music/activity/PlayListDetailActivity;

    invoke-virtual {v0}, Lcn/nubia/music/activity/PlayListDetailActivity;->finish()V

    .line 194
    return-void
.end method
