.class Lcn/nubia/notepad/imagepreview/TouchImageView$1;
.super Ljava/lang/Object;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/imagepreview/TouchImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/imagepreview/TouchImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/imagepreview/TouchImageView;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$1;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/notepad/imagepreview/TouchImageView$1;->this$0:Lcn/nubia/notepad/imagepreview/TouchImageView;

    invoke-static {v0}, Lcn/nubia/notepad/imagepreview/TouchImageView;->access$100(Lcn/nubia/notepad/imagepreview/TouchImageView;)Lcn/nubia/notepad/NotePadImagePreviewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/notepad/NotePadImagePreviewActivity;->finish()V

    .line 114
    return-void
.end method
