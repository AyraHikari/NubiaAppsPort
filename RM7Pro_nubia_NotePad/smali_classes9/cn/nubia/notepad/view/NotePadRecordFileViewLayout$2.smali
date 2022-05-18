.class Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;
.super Ljava/lang/Object;
.source "NotePadRecordFileViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .prologue
    .line 225
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    .line 232
    invoke-static {v1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$300(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->setCurrentPlayingRecordFile(Ljava/io/File;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v0}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$200(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout$2;->this$0:Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;

    invoke-static {v1}, Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;->access$300(Lcn/nubia/notepad/view/NotePadRecordFileViewLayout;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/nubia/notepad/engine/interf/INotePadRecordFileViewLayoutListener;->playRecordFile(Ljava/io/File;)V

    goto :goto_0
.end method
