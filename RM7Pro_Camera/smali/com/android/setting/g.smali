.class public Lcom/android/setting/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/CharSequence;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 95
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    .line 97
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 98
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 99
    invoke-static {v2}, Lcom/android/setting/g;->a(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_2
    return v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.vendor.camera.exif.model"

    .line 83
    invoke-static {v0}, Lcom/android/setting/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "ro.vendor.feature.nubia.exif.module"

    .line 85
    invoke-static {v0}, Lcom/android/setting/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "_"

    const-string v2, " "

    .line 88
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {}, Lcom/android/setting/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "NX619J"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_1

    .line 44
    sget v0, Lcom/android/setting/f$g;->f:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_1
    const-string v1, "NX629J"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 46
    sget v0, Lcom/android/setting/f$g;->g:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    const-string v1, "NX629J_V1S"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 48
    sget v0, Lcom/android/setting/f$g;->h:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    const-string v1, "nubia Z20"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p0, :cond_4

    .line 50
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string v1, "Red Magic 5G"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "persist.sys.pcb_version_ext"

    if-eqz v1, :cond_6

    if-eqz p0, :cond_6

    .line 52
    invoke-static {v2}, Lcom/android/setting/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX659J_V1S"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    sget v0, Lcom/android/setting/f$g;->j:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_5
    sget v0, Lcom/android/setting/f$g;->i:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto/16 :goto_2

    :cond_6
    const-string v1, "RED MAGIC 5G LITE"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 59
    sget v0, Lcom/android/setting/f$g;->e:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    const-string v1, "nubia PLAY"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 61
    sget v0, Lcom/android/setting/f$g;->c:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const-string v1, "REDMAGIC 6 lite"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 63
    sget v0, Lcom/android/setting/f$g;->d:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v1, "REDMAGIC 6"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 65
    invoke-static {v2}, Lcom/android/setting/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NX669J_V1A"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "NX669J_V1E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "NX669J_V1K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    .line 69
    :cond_a
    sget v0, Lcom/android/setting/f$g;->k:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_b
    :goto_1
    sget v0, Lcom/android/setting/f$g;->l:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_c
    const-string v1, "REDMAGIC 6S Pro"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 72
    sget v0, Lcom/android/setting/f$g;->m:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_d
    const-string p0, "nubia Z30 Pro"

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string v0, "Z30 Pro"

    goto :goto_2

    :cond_e
    const-string p0, "telo gamez Z21"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string v0, "Z21"

    :cond_f
    :goto_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    .line 32
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a(C)Z
    .locals 1

    .line 121
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 122
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 134
    sget v0, Lcom/android/setting/f$g;->e:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 109
    invoke-static {p0}, Lcom/android/setting/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0, p0}, Lcom/android/setting/g;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 112
    :cond_0
    sget v1, Lcom/android/setting/f$g;->n:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    sget v2, Lcom/android/setting/f$g;->a:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    :cond_1
    sget v0, Lcom/android/setting/f$g;->b:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    .line 117
    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
