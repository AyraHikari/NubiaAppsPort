.class public Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1}, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 27
    new-instance p1, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;

    invoke-direct {p1, p0, p0}, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;-><init>(Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;Landroid/view/View;)V

    iput-object p1, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;->a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;

    return-void
.end method


# virtual methods
.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;->a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;->a(Landroid/view/TouchDelegate;)V

    .line 33
    iget-object p1, p0, Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout;->a:Lcn/nubia/camera/pretty/LargeMultipleTouchableRelativeLayout$a;

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
