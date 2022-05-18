.class public Lcn/nubia/camera/camerafamily/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static final b:[[I

.field private static c:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "content://nubia.camera.family/directory"

    .line 27
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/camera/camerafamily/a;->a:Landroid/net/Uri;

    const/16 v0, 0x1f

    new-array v0, v0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    .line 41
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [I

    const v5, 0x7f0f00c8

    aput v5, v2, v3

    const v5, 0x7f0f006a

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->v:Lcn/nubia/camera/af/a;

    .line 44
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    const/4 v6, 0x2

    aput v5, v2, v6

    aput-object v2, v0, v6

    new-array v2, v1, [I

    const v5, 0x7f0f01ae

    aput v5, v2, v3

    const v5, 0x7f0f0074

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->x:Lcn/nubia/camera/af/a;

    .line 45
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    aput-object v2, v0, v1

    new-array v2, v1, [I

    const v5, 0x7f0f040b

    aput v5, v2, v3

    const v5, 0x7f0f0081

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->L:Lcn/nubia/camera/af/a;

    .line 46
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/4 v5, 0x4

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0052

    aput v5, v2, v3

    const v5, 0x7f0f0065

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->B:Lcn/nubia/camera/af/a;

    .line 47
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/4 v5, 0x5

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f009a

    aput v5, v2, v3

    const v5, 0x7f0f0066

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->A:Lcn/nubia/camera/af/a;

    .line 48
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/4 v5, 0x6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f00ad

    aput v5, v2, v3

    const v5, 0x7f0f0067

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->c:Lcn/nubia/camera/af/a;

    .line 49
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/4 v5, 0x7

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f011e

    aput v5, v2, v3

    const v5, 0x7f0f006d

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->f:Lcn/nubia/camera/af/a;

    .line 50
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x8

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0129

    aput v5, v2, v3

    const v5, 0x7f0f006e

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->i:Lcn/nubia/camera/af/a;

    .line 51
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x9

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0135

    aput v5, v2, v3

    const v5, 0x7f0f006f

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->F:Lcn/nubia/camera/af/a;

    .line 52
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xa

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0153

    aput v5, v2, v3

    const v5, 0x7f0f0072

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->g:Lcn/nubia/camera/af/a;

    .line 53
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xb

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f01a8

    aput v5, v2, v3

    const v5, 0x7f0f0073

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    .line 54
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xc

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f031f

    aput v5, v2, v3

    const v5, 0x7f0f0079

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->d:Lcn/nubia/camera/af/a;

    .line 55
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xd

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f03ac

    aput v5, v2, v3

    const v5, 0x7f0f007a

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->n:Lcn/nubia/camera/af/a;

    .line 56
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xe

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f03ca

    aput v5, v2, v3

    const v5, 0x7f0f007c

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->h:Lcn/nubia/camera/af/a;

    .line 57
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0xf

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f03d5

    aput v5, v2, v3

    const v5, 0x7f0f007d

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->J:Lcn/nubia/camera/af/a;

    .line 58
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x10

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0316

    aput v5, v2, v3

    const v5, 0x7f0f0078

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->u:Lcn/nubia/camera/af/a;

    .line 59
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x11

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f03e7

    aput v5, v2, v3

    const v7, 0x7f0f007e

    aput v7, v2, v4

    sget-object v8, Lcn/nubia/camera/af/a;->s:Lcn/nubia/camera/af/a;

    .line 60
    invoke-virtual {v8}, Lcn/nubia/camera/af/a;->a()I

    move-result v8

    aput v8, v2, v6

    const/16 v8, 0x12

    aput-object v2, v0, v8

    new-array v2, v1, [I

    aput v5, v2, v3

    aput v7, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->W:Lcn/nubia/camera/af/a;

    .line 61
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x13

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f03e3

    aput v5, v2, v3

    const v5, 0x7f0f007f

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->j:Lcn/nubia/camera/af/a;

    .line 62
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x14

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0416

    aput v5, v2, v3

    const v5, 0x7f0f0082

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->K:Lcn/nubia/camera/af/a;

    .line 63
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x15

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f02dd

    aput v5, v2, v3

    const v5, 0x7f0f0075

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->M:Lcn/nubia/camera/af/a;

    .line 64
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x16

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f010c

    aput v5, v2, v3

    const v5, 0x7f0f006c

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->Q:Lcn/nubia/camera/af/a;

    .line 65
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x17

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f00b7

    aput v5, v2, v3

    const v5, 0x7f0f0068

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->S:Lcn/nubia/camera/af/a;

    .line 66
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x18

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f00c6

    aput v5, v2, v3

    const v5, 0x7f0f0069

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->T:Lcn/nubia/camera/af/a;

    .line 67
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x19

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0022

    aput v5, v2, v3

    const v5, 0x7f0f0064

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->Z:Lcn/nubia/camera/af/a;

    .line 68
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x1a

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0404

    aput v5, v2, v3

    const v5, 0x7f0f0080

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->U:Lcn/nubia/camera/af/a;

    .line 69
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x1b

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f00f6

    aput v5, v2, v3

    const v5, 0x7f0f006b

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->V:Lcn/nubia/camera/af/a;

    .line 70
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x1c

    aput-object v2, v0, v5

    new-array v2, v1, [I

    const v5, 0x7f0f0154

    aput v5, v2, v3

    const v5, 0x7f0f0071

    aput v5, v2, v4

    sget-object v5, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    .line 71
    invoke-virtual {v5}, Lcn/nubia/camera/af/a;->a()I

    move-result v5

    aput v5, v2, v6

    const/16 v5, 0x1d

    aput-object v2, v0, v5

    new-array v1, v1, [I

    const v2, 0x7f0f03ab

    aput v2, v1, v3

    const v2, 0x7f0f007b

    aput v2, v1, v4

    sget-object v2, Lcn/nubia/camera/af/a;->Y:Lcn/nubia/camera/af/a;

    .line 72
    invoke-virtual {v2}, Lcn/nubia/camera/af/a;->a()I

    move-result v2

    aput v2, v1, v6

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sput-object v0, Lcn/nubia/camera/camerafamily/a;->b:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0f0148
        0x7f0f0070
        -0x2
    .end array-data

    :array_1
    .array-data 4
        0x7f0f02e7
        0x7f0f0076
        -0x3
    .end array-data
.end method

.method public static a(I)I
    .locals 4

    const/4 v0, 0x0

    .line 76
    :goto_0
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 77
    aget-object v2, v1, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    if-ne v2, p0, :cond_0

    .line 78
    aget-object p0, v1, v0

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 9

    .line 91
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "photo_album"

    const-string v2, "album_path_en"

    const-string v3, "album_path_zh"

    const-string v4, "album_member"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lcn/nubia/camera/camerafamily/a;->b(Landroid/content/Context;)V

    const/4 v1, 0x0

    move v2, v1

    .line 97
    :goto_0
    sget-object v3, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 98
    aget-object v5, v3, v2

    aget v5, v5, v1

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    sget-object v5, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v6, v5, v2

    aget-object v6, v6, v1

    const/4 v7, 0x1

    aput-object v6, v4, v7

    aget-object v5, v5, v2

    aget-object v5, v5, v7

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v3, v3, v2

    aget v3, v3, v6

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return cursor:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DirectoryTable"

    invoke-static {v1, p0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 7

    .line 108
    sget-object v0, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 112
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    sput-object v1, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    .line 113
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 115
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 116
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    move v3, v2

    .line 117
    :goto_0
    sget-object v5, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v6, v5

    if-ge v3, v6, :cond_1

    .line 118
    sget-object v6, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v6, v6, v3

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 122
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    move v0, v2

    .line 123
    :goto_1
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 124
    sget-object v3, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v3, v3, v0

    aget-object v1, v1, v0

    aget v1, v1, v4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "/DCIM/Camera/"

    move v0, v2

    .line 128
    :goto_2
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->b:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 129
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v3, v1, v0

    aget-object v3, v3, v2

    aget-object v1, v1, v0

    aget-object v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 130
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v3, ""

    aput-object v3, v1, v4

    goto :goto_3

    .line 132
    :cond_3
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 134
    :goto_3
    sget-object v1, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v1, v1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcn/nubia/camera/camerafamily/a;->c:[[Ljava/lang/String;

    aget-object v5, v5, v0

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
