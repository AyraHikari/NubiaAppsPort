.class Lcn/nubia/notepad/NotePadEditorActivity$12;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->setImageViewConfig(Landroid/widget/ImageView;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;

.field final synthetic val$picResourceFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 1932
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$12;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iput-object p2, p0, Lcn/nubia/notepad/NotePadEditorActivity$12;->val$picResourceFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1935
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$12;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    iget-object v1, p0, Lcn/nubia/notepad/NotePadEditorActivity$12;->val$picResourceFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4400(Lcn/nubia/notepad/NotePadEditorActivity;Ljava/lang/String;)V

    .line 1936
    return-void
.end method
