.class Lcn/nubia/commonui/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/app/AlertController;->setupDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/app/AlertController;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$2;->this$0:Lcn/nubia/commonui/app/AlertController;

    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 475
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 477
    iget-object p1, p0, Lcn/nubia/commonui/app/AlertController$2;->this$0:Lcn/nubia/commonui/app/AlertController;

    invoke-static {p1}, Lcn/nubia/commonui/app/AlertController;->access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 479
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$2;->val$parent:Landroid/view/View;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 481
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
