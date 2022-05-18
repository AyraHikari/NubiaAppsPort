.class Landroid/support/v4/graphics/TypefaceCompatApi24Impl;
.super Ljava/lang/Object;
.source "TypefaceCompatApi24Impl.java"

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# static fields
.field private static final ADD_FONT_WEIGHT_STYLE_METHOD:Ljava/lang/String; = "addFontWeightStyle"

.field private static final CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD:Ljava/lang/String; = "createFromFamiliesWithDefault"

.field private static final FONT_FAMILY_CLASS:Ljava/lang/String; = "android.graphics.FontFamily"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatApi24Impl"

.field private static final sAddFontWeightStyle:Ljava/lang/reflect/Method;

.field private static final sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

.field private static final sFontFamily:Ljava/lang/Class;

.field private static final sFontFamilyCtor:Ljava/lang/reflect/Constructor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 66
    :try_start_0
    const-string v0, "android.graphics.FontFamily"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 68
    const-string v0, "addFontWeightStyle"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/nio/ByteBuffer;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/List;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v4, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 70
    const/4 v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    const-class v5, Landroid/graphics/Typeface;

    const-string v6, "createFromFamiliesWithDefault"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v7, v8

    .line 72
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 81
    :goto_0
    sput-object v2, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    .line 82
    sput-object v3, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    .line 83
    sput-object v1, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    .line 84
    sput-object v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    .line 85
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    :goto_1
    const-string v2, "TypefaceCompatApi24Impl"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    .line 79
    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z
    .locals 4

    .prologue
    .line 105
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 115
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sFontFamily:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 117
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 119
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static isUsable()Z
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sAddFontWeightStyle:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static newFamily()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    :try_start_0
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->sFontFamilyCtor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 97
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    .line 141
    invoke-virtual {p2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 143
    invoke-virtual {v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v6

    invoke-static {p1, p3, v6}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToDirectBuffer(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 145
    invoke-virtual {v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v5

    invoke-static {v2, v6, v1, v7, v5}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_1
    return-object v0

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method

.method public createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/graphics/Typeface;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->newFamily()Ljava/lang/Object;

    move-result-object v2

    .line 128
    array-length v3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 129
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v5

    .line 130
    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v4

    .line 129
    invoke-static {v2, v0, v5, v6, v4}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->addFontWeightStyle(Ljava/lang/Object;Ljava/nio/ByteBuffer;IIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 134
    :goto_1
    return-object v0

    .line 128
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {v2}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1
.end method
