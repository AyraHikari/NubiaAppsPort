.class public Lcn/nubia/camera/ba/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/ba/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/ba/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/ba/c;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;I)F
    .locals 2

    .line 68
    sget-object v0, Lcn/nubia/camera/ba/c;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ba/c$a;

    if-nez v0, :cond_0

    .line 70
    invoke-static {p0}, Lcn/nubia/camera/ba/c;->a(Ljava/lang/String;)Lcn/nubia/camera/ba/c$a;

    move-result-object v0

    .line 71
    sget-object v1, Lcn/nubia/camera/ba/c;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/ba/c$a;->a(I)F

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;F)I
    .locals 2

    .line 78
    sget-object v0, Lcn/nubia/camera/ba/c;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/ba/c$a;

    if-nez v0, :cond_0

    .line 80
    invoke-static {p0}, Lcn/nubia/camera/ba/c;->a(Ljava/lang/String;)Lcn/nubia/camera/ba/c$a;

    move-result-object v0

    .line 81
    sget-object v1, Lcn/nubia/camera/ba/c;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    invoke-virtual {v0, p1}, Lcn/nubia/camera/ba/c$a;->b(F)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;)Lcn/nubia/camera/ba/c$a;
    .locals 3

    .line 88
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/b/e;->b(Ljava/lang/String;)Lcn/nubia/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/b/b;->k()F

    move-result v0

    .line 89
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 90
    invoke-static {}, Lcn/nubia/camera/ba/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v1, Lcn/nubia/camera/ba/c$1;

    invoke-direct {v1, v0, p0}, Lcn/nubia/camera/ba/c$1;-><init>(FF)V

    return-object v1

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    const/high16 v2, 0x41600000    # 14.0f

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_1

    .line 102
    new-instance v1, Lcn/nubia/camera/ba/c$2;

    invoke-direct {v1, v0, p0, p0}, Lcn/nubia/camera/ba/c$2;-><init>(FFF)V

    return-object v1

    :cond_1
    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 115
    new-instance v1, Lcn/nubia/camera/ba/c$3;

    invoke-direct {v1, v0, p0, p0}, Lcn/nubia/camera/ba/c$3;-><init>(FFF)V

    return-object v1

    .line 127
    :cond_2
    new-instance v1, Lcn/nubia/camera/ba/c$4;

    invoke-direct {v1, v0, p0, p0}, Lcn/nubia/camera/ba/c$4;-><init>(FFF)V

    return-object v1
.end method
