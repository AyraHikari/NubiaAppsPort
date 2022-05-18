.class Lcn/nubia/notepad/NotePadEditorActivity$34;
.super Ljava/lang/Object;
.source "NotePadEditorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadEditorActivity;->checkoutCurrentEditTextContent(Landroid/widget/EditText;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadEditorActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadEditorActivity;

    .prologue
    .line 3844
    iput-object p1, p0, Lcn/nubia/notepad/NotePadEditorActivity$34;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3847
    iget-object v0, p0, Lcn/nubia/notepad/NotePadEditorActivity$34;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadEditorActivity;->access$4600(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/nubia/notepad/NotePadEditorActivity$34;->this$0:Lcn/nubia/notepad/NotePadEditorActivity;

    invoke-static {v2}, Lcn/nubia/notepad/NotePadEditorActivity;->access$100(Lcn/nubia/notepad/NotePadEditorActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0069

    .line 3848
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 3847
    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 3849
    return-void
.end method
