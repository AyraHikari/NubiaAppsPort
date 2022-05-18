.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# static fields
.field private static final CACHE_FILE_PREFIX:Ljava/lang/String; = "cached_font_"

.field private static final TAG:Ljava/lang/String; = "TypefaceCompatBaseImpl"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 78
    const/4 v2, 0x0

    .line 79
    const v0, 0x7fffffff

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v3, v6, v5

    .line 82
    invoke-virtual {v3}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v8, v1, 0x2

    .line 83
    invoke-virtual {v3}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v1

    if-ne p3, v1, :cond_1

    move v1, v4

    :goto_1
    add-int/2addr v1, v8

    .line 85
    if-eqz v2, :cond_0

    if-le v0, v1, :cond_3

    :cond_0
    move v0, v1

    move-object v1, v3

    .line 81
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 90
    :cond_2
    return-object v2

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 97
    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x190

    move v1, v0

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p2, v1, v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    .line 99
    if-nez v0, :cond_2

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_2
    return-object v0

    .line 97
    :cond_0
    const/16 v0, 0x2bc

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v0

    .line 102
    invoke-static {p1, p3, v0, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_2
.end method

.method public createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/graphics/Typeface;
    .locals 3
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
    const/4 v1, 0x0

    .line 51
    array-length v0, p2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    move-object v0, v1

    .line 72
    :goto_0
    return-object v0

    .line 55
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 56
    invoke-virtual {v0}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 57
    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 58
    if-nez v2, :cond_1

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    invoke-static {v2, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_0

    .line 65
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method
