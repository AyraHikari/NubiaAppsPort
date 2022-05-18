.class public Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a:Landroid/content/UriMatcher;

    const-string v1, "nubia.camera.family"

    const-string v2, "member"

    const/4 v3, 0x1

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "member/#"

    const/4 v3, 0x2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "_id"

    .line 54
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_number"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_type"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_state"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_name"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_icon_id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_icon"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b:Ljava/util/HashMap;

    const-string v1, "family_member_action"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FamProviderDebug"

    const/4 v1, 0x3

    .line 245
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 170
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object p2, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;->b:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string p2, ""

    const/4 p4, -0x1

    const/4 p5, 0x1

    if-eqz p3, :cond_1

    const-string v0, " "

    .line 176
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\'"

    .line 177
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p5

    .line 178
    invoke-virtual {p3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 177
    invoke-virtual {p3, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    move v2, p4

    .line 179
    :goto_0
    sget-object v3, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 180
    sget-object v3, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider$a;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    move v2, p4

    .line 187
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/camerafamily/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/a/c;

    add-int/lit8 v3, p5, 0x1

    .line 191
    invoke-direct {p0, p5, v1}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(ILcn/nubia/a/c;)[Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_4

    if-eq v2, p4, :cond_3

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p5, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    invoke-virtual {p1, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_3
    invoke-virtual {p1, p5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_4
    :goto_2
    move p5, v3

    goto :goto_1

    :cond_5
    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 247
    sget-boolean v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "FamProviderDebug"

    .line 248
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(I)[B
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 230
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 231
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 233
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 234
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private a(ILcn/nubia/a/c;)[Ljava/lang/Object;
    .locals 6

    .line 207
    invoke-virtual {p2}, Lcn/nubia/a/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p2}, Lcn/nubia/a/c;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";android.intent.action.MAIN;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nubia.camera.family"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcn/nubia/a/c;->a(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcn/nubia/a/c;->a()I

    move-result v1

    sget-object v4, Lcn/nubia/camera/af/a;->k:Lcn/nubia/camera/af/a;

    invoke-virtual {v4}, Lcn/nubia/camera/af/a;->a()I

    move-result v4

    if-ne v1, v4, :cond_1

    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ak/a;->ap()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-virtual {p2}, Lcn/nubia/a/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const/4 p1, 0x3

    .line 222
    invoke-virtual {p2}, Lcn/nubia/a/c;->d()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->b(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x4

    .line 223
    invoke-virtual {p2}, Lcn/nubia/a/c;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, p1

    const/4 p1, 0x5

    .line 224
    invoke-virtual {p2}, Lcn/nubia/a/c;->b()I

    move-result p2

    invoke-direct {p0, p2}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(I)[B

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x6

    aput-object v0, v4, p1

    return-object v4
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p1, "delete"

    .line 128
    invoke-direct {p0, p1}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 106
    sget-object v0, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getType unKnow uri : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraFamilyContentProvider"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "vnd.android.cursor.dir/all.camerafamily.note"

    goto :goto_0

    :cond_1
    const-string p1, "vnd.android.cursor.dir/one.camerafamily.note"

    :goto_0
    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p1, "insert"

    .line 122
    invoke-direct {p0, p1}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "CameraFamilyContentProvider"

    const-string v1, "onCreate"

    .line 98
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", projection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionArgs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sortOrder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "CameraFamilyContentProvider"

    const-string v1, "uri is null"

    .line 146
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 149
    sget-object v0, Lcn/nubia/camera/CameraApplication;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcn/nubia/camera/ba/a;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-direct/range {p0 .. p5}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "CameraFamilyContentProvider"

    const-string p2, "Camera Info is not initialized"

    .line 151
    invoke-static {p1, p2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 152
    invoke-static {p1}, Lcn/nubia/camera/CameraApplication;->a(Z)V

    .line 153
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 158
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "directory"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 159
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/camerafamily/a;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 161
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "labelgroup"

    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 162
    invoke-virtual {p0}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/b/i;->a(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p2, "CameraFamilyContentProvider"

    .line 164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error uri "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update, select: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; selectionArgs: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/camerafamily/CameraFamilyContentProvider;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
