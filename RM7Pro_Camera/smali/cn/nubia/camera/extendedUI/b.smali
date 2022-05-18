.class public Lcn/nubia/camera/extendedUI/b;
.super Lcom/android/common/ui/a;
.source "SourceFile"


# instance fields
.field private b:Lcn/nubia/camera/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/android/common/ui/a;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lcn/nubia/camera/extendedUI/b$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/extendedUI/b$1;-><init>(Lcn/nubia/camera/extendedUI/b;)V

    iput-object p1, p0, Lcn/nubia/camera/extendedUI/b;->b:Lcn/nubia/camera/f/a;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/b;Landroid/view/View;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lcom/android/common/ui/a;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-static {}, Lcn/nubia/camera/f/b;->a()Lcn/nubia/camera/f/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/extendedUI/b;->b:Lcn/nubia/camera/f/a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/f/b;->a(Lcn/nubia/camera/f/c;)V

    return-void
.end method
