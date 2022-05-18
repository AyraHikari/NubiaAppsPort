.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->ensureSubDecor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    .prologue
    .line 330
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 335
    .local v1, "top":I
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v2, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$300(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I

    move-result v0

    .line 337
    .local v0, "newTop":I
    if-eq v1, v0, :cond_0

    .line 339
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    .line 341
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 342
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 338
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 346
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2
.end method
