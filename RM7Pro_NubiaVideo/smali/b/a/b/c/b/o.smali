.class public Lb/a/b/c/b/o;
.super Lb/a/b/c/b/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/o$a;
    }
.end annotation


# static fields
.field private static final k:[Ljava/lang/String;

.field public static final l:Ljava/lang/Object;


# instance fields
.field private c:I

.field private d:Lcn/nubia/video/list/app/a;

.field private e:Landroid/net/Uri;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lb/a/b/c/b/r;

.field private i:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lb/a/b/c/b/o$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lb/a/b/c/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "count(_id)"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/b/c/b/o;->k:[Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lb/a/b/c/b/o;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/video/list/app/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lb/a/b/c/b/n;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lb/a/b/c/b/o;->i:Ljava/util/WeakHashMap;

    .line 3
    iput-object p1, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    .line 4
    sget-object p1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object p1, p0, Lb/a/b/c/b/o;->e:Landroid/net/Uri;

    .line 5
    invoke-static {}, Lb/a/b/d/e;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/o;->f:Ljava/lang/String;

    .line 6
    invoke-static {}, Lb/a/b/d/e;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/o;->g:Ljava/lang/String;

    const-string p1, "/local/all/"

    .line 7
    invoke-static {p1}, Lb/a/b/c/b/r;->a(Ljava/lang/String;)Lb/a/b/c/b/r;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/o;->h:Lb/a/b/c/b/r;

    .line 8
    new-instance p1, Lb/a/b/c/b/d;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-direct {p1, p0, v0, v1}, Lb/a/b/c/b/d;-><init>(Lb/a/b/c/b/o;Landroid/net/Uri;Lcn/nubia/video/list/app/a;)V

    iput-object p1, p0, Lb/a/b/c/b/o;->j:Lb/a/b/c/b/d;

    return-void
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private f()Lb/a/b/c/b/m;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lb/a/b/c/b/o;->h(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b/c/b/m;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private l(Landroid/database/Cursor;Lcn/nubia/video/list/app/a;)Lb/a/b/c/b/m;
    .locals 3

    .line 1
    sget-object v0, Lb/a/b/c/b/o;->l:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lb/a/b/c/b/o;->h:Lb/a/b/c/b/r;

    invoke-virtual {v2, v1}, Lb/a/b/c/b/r;->b(I)Lb/a/b/c/b/r;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lb/a/b/c/b/r;->d()Lb/a/b/c/b/m;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lb/a/b/c/b/m;

    invoke-direct {v2, v1, p2, p1}, Lb/a/b/c/b/m;-><init>(Lb/a/b/c/b/r;Lcn/nubia/video/list/app/a;Landroid/database/Cursor;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2, p1}, Lb/a/b/c/b/m;->w(Landroid/database/Cursor;)V

    .line 7
    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public c(Lb/a/b/c/b/o$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->i:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lb/a/b/c/b/r;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lb/a/b/c/b/r;->d()Lb/a/b/c/b/m;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/o;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/b/c/b/r;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lb/a/b/c/b/m;->k()V

    :goto_0
    return-void
.end method

.method public g()Lb/a/b/c/b/m;
    .locals 9

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "latest_video_uri"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lb/a/b/d/e;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lb/a/b/c/b/o;->f()Lb/a/b/c/b/m;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-interface {v1}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lb/a/b/c/b/m;->k:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSet"

    invoke-static {v1, v0}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lb/a/b/c/b/o;->f()Lb/a/b/c/b/m;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-direct {p0, v1, v0}, Lb/a/b/c/b/o;->l(Landroid/database/Cursor;Lcn/nubia/video/list/app/a;)Lb/a/b/c/b/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    invoke-static {v2}, Lb/a/b/c/b/o;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-direct {p0}, Lb/a/b/c/b/o;->f()Lb/a/b/c/b/m;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lb/a/b/c/b/o;->f()Lb/a/b/c/b/m;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    throw v0
.end method

.method public h(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->e:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v0, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lb/a/b/c/b/m;->k:[Ljava/lang/String;

    iget-object v3, p0, Lb/a/b/c/b/o;->f:Ljava/lang/String;

    iget-object v5, p0, Lb/a/b/c/b/o;->g:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaSet"

    invoke-static {v0, p1}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-direct {p0, v0, p1}, Lb/a/b/c/b/o;->l(Landroid/database/Cursor;Lcn/nubia/video/list/app/a;)Lb/a/b/c/b/m;

    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9
    throw p1
.end method

.method public i()I
    .locals 7

    .line 1
    iget v0, p0, Lb/a/b/c/b/o;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/o;->d:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lb/a/b/c/b/o;->e:Landroid/net/Uri;

    sget-object v3, Lb/a/b/c/b/o;->k:[Ljava/lang/String;

    iget-object v4, p0, Lb/a/b/c/b/o;->f:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MediaSet"

    const-string v2, "query fail"

    .line 3
    invoke-static {v0, v2}, Lb/a/b/d/e;->J(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 5
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lb/a/b/c/b/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 7
    throw v1

    .line 8
    :cond_1
    :goto_0
    iget v0, p0, Lb/a/b/c/b/o;->c:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->g:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/b/c/b/o$a;

    .line 2
    invoke-interface {v1}, Lb/a/b/c/b/o$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n()J
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->j:Lb/a/b/c/b/d;

    invoke-virtual {v0}, Lb/a/b/c/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/b/c/b/n;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/b/c/b/n;->a:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb/a/b/c/b/o;->c:I

    .line 4
    :cond_0
    iget-wide v0, p0, Lb/a/b/c/b/n;->a:J

    return-wide v0
.end method

.method public o(Lb/a/b/c/b/o$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/o;->i:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
