.class public Lcn/nubia/camera/extendedUI/g;
.super Lcom/android/common/ui/k;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/camera/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/common/ui/k;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Lcn/nubia/camera/extendedUI/g$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/extendedUI/g$1;-><init>(Lcn/nubia/camera/extendedUI/g;)V

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/g;->a:Lcn/nubia/camera/f/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/g;Landroid/view/View;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/android/common/ui/k;->onClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/g;->a:Lcn/nubia/camera/f/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    return-void
.end method
