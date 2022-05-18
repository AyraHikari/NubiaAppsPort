.class Lcn/nubia/commonui/widget/TranslationListLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TranslationListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/TranslationListLayout;->createToTopAnimator(I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/TranslationListLayout;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/TranslationListLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/widget/TranslationListLayout;

    .prologue
    .line 474
    iput-object p1, p0, Lcn/nubia/commonui/widget/TranslationListLayout$2;->this$0:Lcn/nubia/commonui/widget/TranslationListLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$2;->this$0:Lcn/nubia/commonui/widget/TranslationListLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$002(Lcn/nubia/commonui/widget/TranslationListLayout;F)F

    .line 478
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$2;->this$0:Lcn/nubia/commonui/widget/TranslationListLayout;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$202(Lcn/nubia/commonui/widget/TranslationListLayout;I)I

    .line 479
    iget-object v0, p0, Lcn/nubia/commonui/widget/TranslationListLayout$2;->this$0:Lcn/nubia/commonui/widget/TranslationListLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$402(Lcn/nubia/commonui/widget/TranslationListLayout;I)I

    .line 480
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/commonui/widget/TranslationListLayout;->access$302(Z)Z

    .line 481
    return-void
.end method
