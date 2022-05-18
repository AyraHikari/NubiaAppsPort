.class public Lb/a/b/c/b/m;
.super Lb/a/b/c/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/m$a;
    }
.end annotation


# static fields
.field public static final k:[Ljava/lang/String;

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I

.field private static p:I

.field private static q:I

.field private static r:I

.field private static s:I

.field private static final t:Lb/a/b/c/a/b;


# instance fields
.field private c:Lcn/nubia/video/list/app/a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Lb/a/b/c/b/r;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "_data"

    const-string v3, "mime_type"

    const-string v4, "artist"

    const-string v5, "duration"

    const-string v6, "datetaken"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/b/c/b/m;->k:[Ljava/lang/String;

    .line 2
    new-instance v0, Lb/a/b/c/a/b;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lb/a/b/c/a/b;-><init>(II)V

    sput-object v0, Lb/a/b/c/b/m;->t:Lb/a/b/c/a/b;

    return-void
.end method

.method public constructor <init>(Lb/a/b/c/b/r;Lcn/nubia/video/list/app/a;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/a/b/c/b/n;-><init>()V

    .line 2
    iput-object p2, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    .line 3
    invoke-virtual {p1, p0}, Lb/a/b/c/b/r;->f(Lb/a/b/c/b/m;)V

    .line 4
    iput-object p1, p0, Lb/a/b/c/b/m;->i:Lb/a/b/c/b/r;

    .line 5
    invoke-static {}, Lb/a/b/c/b/n;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lb/a/b/c/b/n;->a:J

    .line 6
    invoke-direct {p0, p3}, Lb/a/b/c/b/m;->t(Landroid/database/Cursor;)V

    .line 7
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070095

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->l:I

    .line 8
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070099

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->m:I

    .line 9
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700aa

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->n:I

    .line 10
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ac

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->o:I

    .line 11
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070090

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->q:I

    .line 12
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07008f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->p:I

    .line 13
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700a4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->r:I

    .line 14
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result p1

    sput p1, Lb/a/b/c/b/m;->s:I

    return-void
.end method

.method static synthetic c()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->o:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->n:I

    return v0
.end method

.method static synthetic e()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->m:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->l:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->q:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->p:I

    return v0
.end method

.method static synthetic i()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->s:I

    return v0
.end method

.method static synthetic j()I
    .locals 1

    .line 1
    sget v0, Lb/a/b/c/b/m;->r:I

    return v0
.end method

.method public static l()Lb/a/b/c/a/b;
    .locals 1

    .line 1
    sget-object v0, Lb/a/b/c/b/m;->t:Lb/a/b/c/a/b;

    return-object v0
.end method

.method private t(Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lb/a/b/c/b/m;->e:I

    const/4 v0, 0x1

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    const/4 v0, 0x3

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/b/c/b/m;->f:Ljava/lang/String;

    const/4 v0, 0x5

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lb/a/b/c/b/m;->h:I

    const/4 v0, 0x6

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b/c/b/m;->j:J

    return-void
.end method

.method private x(Landroid/database/Cursor;)Z
    .locals 5

    .line 1
    new-instance v0, Lb/a/b/c/b/s;

    invoke-direct {v0}, Lb/a/b/c/b/s;-><init>()V

    .line 2
    iget v1, p0, Lb/a/b/c/b/m;->e:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/s;->b(II)I

    move-result v1

    iput v1, p0, Lb/a/b/c/b/m;->e:I

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/s;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lb/a/b/c/b/m;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/s;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lb/a/b/c/b/m;->f:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/s;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lb/a/b/c/b/m;->f:Ljava/lang/String;

    .line 6
    iget v1, p0, Lb/a/b/c/b/m;->h:I

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/a/b/c/b/s;->b(II)I

    move-result v1

    iput v1, p0, Lb/a/b/c/b/m;->h:I

    .line 7
    iget-wide v1, p0, Lb/a/b/c/b/m;->j:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/b/c/b/s;->c(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lb/a/b/c/b/m;->j:J

    .line 8
    invoke-virtual {v0}, Lb/a/b/c/b/s;->a()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public m()I
    .locals 2

    .line 1
    iget v0, p0, Lb/a/b/c/b/m;->h:I

    if-nez v0, :cond_1

    iget-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2
    new-instance v0, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    move v0, v1

    :cond_1
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lb/a/b/c/b/m;->e:I

    return v0
.end method

.method public o()Lb/a/b/c/b/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/m;->i:Lb/a/b/c/b/r;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/16 v1, 0x2e

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/m;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 2

    .line 1
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lb/a/b/c/b/m;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lb/a/b/c/b/m;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object v1, p0, Lb/a/b/c/b/m;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    const/16 v2, 0x2e

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    return v0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "title"

    .line 9
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_data"

    .line 10
    invoke-virtual {v2, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    .line 11
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lb/a/b/c/b/m;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lb/a/b/c/b/m;->r()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public v(Lcn/nubia/video/list/app/a;I)Lb/a/b/e/d$c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/video/list/app/a;",
            "I)",
            "Lb/a/b/e/d$c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lb/a/b/c/b/m$a;

    iget-object v3, p0, Lb/a/b/c/b/m;->g:Ljava/lang/String;

    iget v0, p0, Lb/a/b/c/b/m;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lb/a/b/c/b/m;->j:J

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lb/a/b/c/b/m$a;-><init>(Lcn/nubia/video/list/app/a;ILjava/lang/String;Ljava/lang/String;J)V

    return-object v7
.end method

.method public w(Landroid/database/Cursor;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb/a/b/c/b/m;->x(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lb/a/b/c/b/n;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b/c/b/n;->a:J

    :cond_0
    return-void
.end method
