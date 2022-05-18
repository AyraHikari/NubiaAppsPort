.class public Lcn/nubia/camera/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/n/a$b;,
        Lcn/nubia/camera/n/a$a;
    }
.end annotation


# static fields
.field private static final a:[F

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_0

    sput-object v1, Lcn/nubia/camera/n/a;->a:[F

    new-array v0, v0, [F

    .line 27
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/n/a;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x0
        0x0
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static a(Landroid/view/View;)V
    .locals 2

    .line 16
    new-instance v0, Lcn/nubia/camera/n/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/nubia/camera/n/a$a;-><init>(Lcn/nubia/camera/n/a$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 17
    new-instance v0, Lcn/nubia/camera/n/a$b;

    invoke-direct {v0, v1}, Lcn/nubia/camera/n/a$b;-><init>(Lcn/nubia/camera/n/a$1;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic a()[F
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/camera/n/a;->a:[F

    return-object v0
.end method

.method static synthetic b()[F
    .locals 1

    .line 14
    sget-object v0, Lcn/nubia/camera/n/a;->b:[F

    return-object v0
.end method
