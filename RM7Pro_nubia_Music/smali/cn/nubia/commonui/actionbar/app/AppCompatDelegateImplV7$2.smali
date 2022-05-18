.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 334
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 335
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$2;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-static {v1, v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I

    move-result v1

    .line 337
    if-eq v0, v1, :cond_0

    .line 339
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    .line 341
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    .line 342
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    .line 338
    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p2

    .line 346
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0
.end method
