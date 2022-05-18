.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Lcn/nubia/commonui/actionbar/internal/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;


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
    .line 352
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$3;->a:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->c(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 356
    return-void
.end method
