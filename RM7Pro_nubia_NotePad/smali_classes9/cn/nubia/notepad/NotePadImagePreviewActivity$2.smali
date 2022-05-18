.class Lcn/nubia/notepad/NotePadImagePreviewActivity$2;
.super Ljava/lang/Object;
.source "NotePadImagePreviewActivity.java"

# interfaces
.implements Lcn/nubia/notepad/view/ZoomImageView$OnOneTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadImagePreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadImagePreviewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadImagePreviewActivity;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity$2;->this$0:Lcn/nubia/notepad/NotePadImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneTouch()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/notepad/NotePadImagePreviewActivity$2;->this$0:Lcn/nubia/notepad/NotePadImagePreviewActivity;

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->finish()V

    .line 39
    return-void
.end method
