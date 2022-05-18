.class public Lcn/nubia/improve/ApiHelper;
.super Ljava/lang/Object;
.source "ApiHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/ApiHelper$VERSION_CODES;
    }
.end annotation


# static fields
.field public static final ANDROID_M:Z

.field public static final CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

.field public static final HAS_GLES20_REQUIRED:Z

.field public static final HAS_MOTION_EVENT_TRANSFORM:Z

.field public static final HAS_POST_ON_ANIMATION:Z

.field public static final HAS_RELEASE_SURFACE_TEXTURE:Z

.field public static final HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

.field public static final HAS_SET_BEAM_PUSH_URIS:Z

.field public static final HAS_SET_DEFALT_BUFFER_SIZE:Z

.field public static final JELLY_BEAN_MR2:Z

.field public static final USE_888_PIXEL_FORMAT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->CAN_START_PREVIEW_IN_JPEG_CALLBACK:Z

    .line 40
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v0, v4, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_GLES20_REQUIRED:Z

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v0, v5, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    move v0, v3

    :goto_5
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->JELLY_BEAN_MR2:Z

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_SET_BEAM_PUSH_URIS:Z

    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->ANDROID_M:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 55
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-string v1, "android.graphics.SurfaceTexture"

    const-string v2, "setDefaultBufferSize"

    invoke-static {v1, v2, v0}, Lcn/nubia/improve/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    new-array v0, v3, [Ljava/lang/Class;

    const-string v2, "release"

    .line 59
    invoke-static {v1, v2, v0}, Lcn/nubia/improve/ApiHelper;->hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/improve/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Environment_getSecondaryStorageDirectory()Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.Environment"

    .line 114
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSecondaryStorageDirectory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 115
    invoke-static {v1, v0, v2, v3}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    return-object v0
.end method

.method public static PopupMenu_isShowing(Landroid/widget/PopupMenu;)Z
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "isShowing"

    .line 104
    invoke-static {p0, v1, v0}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 106
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static WallpaperManager_getWallpaperXOffset(Landroid/app/WallpaperManager;)F
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getWallpaperXOffset"

    .line 86
    invoke-static {p0, v1, v0}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static WallpaperManager_getWallpaperYOffset(Landroid/app/WallpaperManager;)F
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getWallpaperYOffset"

    .line 95
    invoke-static {p0, v1, v0}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static clipWallpaper(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    const-string v0, "nubia.ui.util.BlurUtil"

    .line 223
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clipWallpaper"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 224
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 225
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static doGaussianBlurByDefault(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    const-string v0, "com.nubia.blureffect.BlurEffect"

    .line 237
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "doGaussianBlurByDefault"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 238
    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/graphics/Rect;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    .line 239
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getLevelOtgStoragePath()Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "OTG_STORAGE"

    .line 193
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getOtgStoragePath()Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "android.os.Environment"

    .line 179
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getOtgStorageDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 180
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    .line 188
    invoke-static {}, Lcn/nubia/improve/ApiHelper;->getLevelOtgStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondaryStorageDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 123
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, "storage"

    .line 125
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 127
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getVolumePaths"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    .line 128
    array-length v2, p0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v3, p0, v4

    .line 129
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 139
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 135
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getWlanCameraFlag()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "nubia.os.ApplicationManager$Trigger"

    .line 284
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActionState"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 285
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "wlan-camera-ing"

    aput-object v4, v3, v0

    .line 286
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 288
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static hasField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 65
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs hasMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hasSecondaryStorage(Landroid/content/Context;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "storage"

    .line 151
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumePaths"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    .line 155
    array-length v1, p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    :try_start_1
    aget-object v4, p0, v2

    .line 156
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcn/nubia/improve/ApiHelper;->getOtgStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    move v3, v0

    .line 167
    :goto_1
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception p0

    move v3, v0

    .line 165
    :goto_2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception p0

    move v3, v0

    .line 163
    :goto_3
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    :catch_7
    move-exception p0

    move v3, v0

    .line 161
    :goto_4
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_2
    :goto_5
    const/4 p0, 0x1

    if-le v3, p0, :cond_3

    return p0

    :cond_3
    return v0
.end method

.method private static varargs invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 201
    invoke-virtual {p0, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 214
    invoke-static {v0, p0, p1, p2}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newExifFormInputStream(Ljava/io/InputStream;)Landroid/media/ExifInterface;
    .locals 5

    :try_start_0
    const-string v0, "android.media.ExifInterface"

    .line 296
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 297
    const-class v3, Ljava/io/InputStream;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 300
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static putSmartShowExtra(Landroid/content/Intent;Landroid/graphics/Bitmap;)V
    .locals 7

    :try_start_0
    const-string v0, "android.content.Intent"

    .line 250
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "putSmartShowExtra"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 251
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Parcelable;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "android.intent.extra.STREAM"

    aput-object v2, v1, v5

    aput-object p1, v1, v6

    .line 252
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 256
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSmartContent(ILandroid/content/ClipData;)V
    .locals 8

    :try_start_0
    const-string v0, "android.content.SmartShowContext"

    .line 266
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "android.content.ISmartShowContext"

    .line 267
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setSmartContent"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 268
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/ClipData;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const-string v4, "getInstance"

    new-array v5, v6, [Ljava/lang/Object;

    .line 269
    invoke-static {v0, v2, v4, v5}, Lcn/nubia/improve/ApiHelper;->invokeMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 275
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
