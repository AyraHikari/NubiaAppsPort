.class public Landroid/support/v4/graphics/TypefaceCompatApi26Impl;
.super Landroid/support/v4/graphics/TypefaceCompatApi21Impl;
.source ""


# static fields
.field private static final ABORT_CREATION_METHOD:Ljava/lang/String; = "abortCreation"

.field private static final ADD_FONT_FROM_ASSET_MANAGER_METHOD:Ljava/lang/String; = "addFontFromAssetManager"

.field private static final ADD_FONT_FROM_BUFFER_METHOD:Ljava/lang/String; = "addFontFromBuffer"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final FREEZE_METHOD:Ljava/lang/String; = "freeze"

.field private static final RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi26Impl"

.field private static final sAbortCreation:Ljava/lang/reflect/Method;

.field private static final sAddFontFromAssetManager:Ljava/lang/reflect/Method;

.field private static final sAddFontFromBuffer:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;

.field private static final sFreeze:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.graphics.FontFamily"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const-string v4, "addFontFromAssetManager"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/AssetManager;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v9, v5, v10

    const/4 v9, 0x4

    aput-object v6, v5, v9

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const/4 v12, 0x7

    const-class v13, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v13, v5, v12

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "addFontFromBuffer"

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, Ljava/nio/ByteBuffer;

    aput-object v12, v11, v2

    aput-object v6, v11, v7

    const-class v12, [Landroid/graphics/fonts/FontVariationAxis;

    aput-object v12, v11, v8

    aput-object v6, v11, v10

    aput-object v6, v11, v9

    invoke-virtual {v1, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v9, "freeze"

    new-array v11, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const-string v11, "abortCreation"

    new-array v12, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    const-class v13, Landroid/graphics/Typeface;

    const-string v14, "createFromFamiliesWithDefault"

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v10, v2

    aput-object v6, v10, v7

    aput-object v6, v10, v8

    invoke-virtual {v13, v14, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to collect necessary methods for class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TypefaceCompatApi26Impl"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    move-object v2, v1

    move-object v4, v2

    move-object v5, v4

    move-object v9, v5

    move-object v11, v9

    :goto_1
    sput-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    sput-object v1, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamily:Ljava/lang/Class;

    sput-object v4, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    sput-object v5, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromBuffer:Ljava/lang/reflect/Method;

    sput-object v9, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFreeze:Ljava/lang/reflect/Method;

    sput-object v11, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAbortCreation:Ljava/lang/reflect/Method;

    sput-object v2, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    return-void
.end method

.method private static abortCreation(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAbortCreation:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z
    .locals 3

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p2, v1, p0

    const/4 p0, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, v1, p0

    const/4 p0, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x7

    const/4 p2, 0x0

    aput-object p2, v1, p0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    .locals 3

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromBuffer:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v1, p1

    const/4 p1, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static freeze(Ljava/lang/Object;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFreeze:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static isFontFamilyPrivateAPIAvailable()Z
    .locals 3

    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sAddFontFromAssetManager:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v1, "TypefaceCompatApi26Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 8

    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object p2

    array-length p4, p2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    if-ge v6, p4, :cond_2

    aget-object v0, p2, v6

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    move-object v0, p1

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    return-object v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v7

    :cond_3
    invoke-static {p3}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 7

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p3, p4}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestInfo([Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_0
    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object p4

    const-string v0, "r"

    invoke-virtual {p1, p4, v0, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Landroid/graphics/Typeface$Builder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    invoke-virtual {p3}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-object p2

    :catchall_0
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p3

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-object v2

    :cond_3
    invoke-static {p1, p3, p2}, Landroid/support/v4/provider/FontsContractCompat;->prepareFontData(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object p1

    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p2

    array-length p4, p3

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v0, p4, :cond_6

    aget-object v4, p3, v0

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v3

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v4

    invoke-static {p2, v5, v3, v6, v4}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromBuffer(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    return-object v2

    :cond_5
    move v3, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    if-nez v3, :cond_7

    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    return-object v2

    :cond_7
    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return-object v2

    :cond_8
    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6

    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->isFontFamilyPrivateAPIAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->newFamily()Ljava/lang/Object;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->addFontFromAssetManager(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;III)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->abortCreation(Ljava/lang/Object;)Z

    return-object p3

    :cond_1
    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->freeze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object p3

    :cond_2
    invoke-static {p2}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1
.end method
