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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcn/nubia/commonui/app/AlertController;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/app/AlertController;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 420
    iput-object p1, p0, Lcn/nubia/commonui/app/AlertController$2;->b:Lcn/nubia/commonui/app/AlertController;

    iput-object p2, p0, Lcn/nubia/commonui/app/AlertController$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p2}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcn/nubia/commonui/app/AlertController$2;->b:Lcn/nubia/commonui/app/AlertController;

    invoke-static {v0}, Lcn/nubia/commonui/app/AlertController;->access$800(Lcn/nubia/commonui/app/AlertController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_alert_dialog_round_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 427
    iget-object v1, p0, Lcn/nubia/commonui/app/AlertController$2;->a:Landroid/view/View;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 429
    :cond_0
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
