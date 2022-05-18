.class Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;
.super Ljava/lang/Object;
.source "GalleryEGLConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final ATTR_ID:[I

.field private static final ATTR_NAME:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "GalleryEGLConfigChooser"


# instance fields
.field private final mConfigSpec:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 96
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    const-string v1, "R"

    const-string v2, "G"

    const-string v3, "B"

    const-string v4, "A"

    const-string v5, "D"

    const-string v6, "S"

    const-string v7, "ID"

    const-string v8, "CAVEAT"

    .line 107
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x3024
        0x3023
        0x3022
        0x3021
        0x3025
        0x3026
        0x3028
        0x3027
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [I

    .line 34
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3021
        0x0
        0x3038
    .end array-data
.end method

.method private chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 71
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v5, v2

    :goto_0
    const/16 v6, 0x3026

    if-ge v5, v1, :cond_4

    .line 72
    aget-object v7, p3, v5

    const/16 v8, 0x3024

    invoke-interface {p1, p2, v7, v8, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 75
    aget v7, v0, v2

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    aget-object v7, p3, v5

    invoke-interface {p1, p2, v7, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    aget v6, v0, v2

    if-nez v6, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    aget v6, v0, v2

    if-ge v6, v4, :cond_2

    .line 81
    aget v3, v0, v2

    .line 82
    aget-object v4, p3, v5

    move-object v9, v4

    move v4, v3

    move-object v3, v9

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_3
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglGetConfigAttrib error: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 86
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez v3, :cond_5

    .line 89
    aget-object v3, p3, v2

    .line 90
    :cond_5
    invoke-interface {p1, p2, v3, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 92
    invoke-direct {p0, p1, p2, v3}, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v3
.end method

.method private logConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 114
    :goto_0
    sget-object v4, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_ID:[I

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 115
    aget v4, v4, v3

    invoke-interface {p1, p2, p3, v4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->ATTR_NAME:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Config chosen: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GalleryEGLConfigChooser"

    invoke-static {p2, p1}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 44
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 48
    aget v2, v0, v1

    if-lez v2, :cond_1

    .line 52
    aget v5, v0, v1

    new-array v7, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 53
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v7

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2, v7}, Lcn/nubia/gallery3d/ui/GalleryEGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
