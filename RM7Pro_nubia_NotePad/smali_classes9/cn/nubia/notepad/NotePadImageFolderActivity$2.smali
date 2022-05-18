.class Lcn/nubia/notepad/NotePadImageFolderActivity$2;
.super Ljava/lang/Object;
.source "NotePadImageFolderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImageFolderActivity;->startQueryImageFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImageFolderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImageFolderActivity;

    .prologue
    .line 303
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$100(Lcn/nubia/notepad/NotePadImageFolderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 308
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$400(Lcn/nubia/notepad/NotePadImageFolderActivity;)V

    .line 309
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$500(Lcn/nubia/notepad/NotePadImageFolderActivity;)Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImageFolderActivity$2;->this$0:Lcn/nubia/notepad/NotePadImageFolderActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadImageFolderActivity;->access$500(Lcn/nubia/notepad/NotePadImageFolderActivity;)Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/NotePadImageFolderActivity$NotePadImageFolderHandler;->sendEmptyMessage(I)Z

    .line 312
    :cond_0
    return-void
.end method
