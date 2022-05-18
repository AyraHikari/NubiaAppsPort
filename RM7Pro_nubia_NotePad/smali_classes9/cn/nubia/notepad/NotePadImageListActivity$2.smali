.class Lcn/nubia/notepad/NotePadImageListActivity$2;
.super Ljava/lang/Object;
.source "NotePadImageListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageListActivity;->startQueryImageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageListActivity;

    .prologue
    .line 199
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageListActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$400(Lcn/nubia/notepad/NotePadImageListActivity;)V

    .line 203
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$500(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageListActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageListActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageListActivity;->access$500(Lcn/nubia/notepad/NotePadImageListActivity;)Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadImageListActivity$NotePadImageListHandler;->sendEmptyMessage(I)Z

    .line 206
    :cond_0
    return-void
.end method
