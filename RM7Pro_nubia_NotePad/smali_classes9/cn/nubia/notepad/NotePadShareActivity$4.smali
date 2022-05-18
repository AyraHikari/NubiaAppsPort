.class Lcn/nubia/notepad/NotePadShareActivity$4;
.super Ljava/lang/Object;
.source "NotePadShareActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/NotePadShareActivity;->handleNoteData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/NotePadShareActivity;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/NotePadShareActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/NotePadShareActivity;

    .prologue
    .line 556
    iput-object p1, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 559
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$800(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 561
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$900(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v1}, Lcn/nubia/notepad/NotePadShareActivity;->access$800(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    .line 562
    invoke-static {v2}, Lcn/nubia/notepad/NotePadShareActivity;->access$300(Lcn/nubia/notepad/NotePadShareActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 561
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 564
    iget-object v0, p0, Lcn/nubia/notepad/NotePadShareActivity$4;->this$0:Lcn/nubia/notepad/NotePadShareActivity;

    invoke-static {v0}, Lcn/nubia/notepad/NotePadShareActivity;->access$1000(Lcn/nubia/notepad/NotePadShareActivity;)V

    .line 565
    const/4 v0, 0x0

    return v0
.end method
