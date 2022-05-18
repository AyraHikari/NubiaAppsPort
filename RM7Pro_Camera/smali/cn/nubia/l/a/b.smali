.class public Lcn/nubia/l/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/l/a/b$c;,
        Lcn/nubia/l/a/b$b;,
        Lcn/nubia/l/a/b$a;,
        Lcn/nubia/l/a/b$d;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/l/a/a;

.field private b:Lcn/nubia/l/a/b$b;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/l/a/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;

.field private e:Lcn/nubia/l/b/d;

.field private f:Z

.field private g:J

.field private h:Landroid/content/Context;

.field private i:I

.field private j:Lcn/nubia/l/a/b$c;

.field private k:J

.field private l:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    .line 28
    iput-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcn/nubia/l/a/b;->e:Lcn/nubia/l/b/d;

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcn/nubia/l/a/b;->f:Z

    const-wide/16 v2, 0x0

    .line 33
    iput-wide v2, p0, Lcn/nubia/l/a/b;->g:J

    .line 34
    iput-object v0, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    const/16 v0, 0x96

    .line 35
    iput v0, p0, Lcn/nubia/l/a/b;->i:I

    const-wide/16 v2, -0x1

    .line 40
    iput-wide v2, p0, Lcn/nubia/l/a/b;->k:J

    .line 45
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/l/a/b;->l:Landroid/os/ConditionVariable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    .line 28
    iput-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 30
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    .line 31
    iput-object v0, p0, Lcn/nubia/l/a/b;->e:Lcn/nubia/l/b/d;

    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcn/nubia/l/a/b;->f:Z

    const-wide/16 v2, 0x0

    .line 33
    iput-wide v2, p0, Lcn/nubia/l/a/b;->g:J

    .line 34
    iput-object v0, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    const/16 v0, 0x96

    .line 35
    iput v0, p0, Lcn/nubia/l/a/b;->i:I

    const-wide/16 v2, -0x1

    .line 40
    iput-wide v2, p0, Lcn/nubia/l/a/b;->k:J

    .line 45
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/l/a/b;->l:Landroid/os/ConditionVariable;

    if-nez p1, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    .line 61
    iput p2, p0, Lcn/nubia/l/a/b;->i:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 0

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$b;)Lcn/nubia/l/a/b$b;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/l/a/b;Lcn/nubia/l/b/d;)Lcn/nubia/l/b/d;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/l/a/b;->e:Lcn/nubia/l/b/d;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/l/a/b;)Ljava/lang/Boolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/l/a/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/l/a/b$d;

    .line 151
    invoke-interface {v1, p1, p2}, Lcn/nubia/l/a/b$d;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcn/nubia/l/a/a;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setThumbnail uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iput-object p1, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    .line 163
    invoke-direct {p0}, Lcn/nubia/l/a/b;->f()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/a;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/a/a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$c;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/l/a/b;->b(Lcn/nubia/l/a/b$c;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/l/a/b;)Lcn/nubia/l/b/d;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/l/a/b;->e:Lcn/nubia/l/b/d;

    return-object p0
.end method

.method private declared-synchronized b(Lcn/nubia/l/a/b$c;)V
    .locals 10

    monitor-enter p0

    .line 207
    :try_start_0
    sget-object v0, Lcn/nubia/l/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcn/nubia/l/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 208
    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 212
    monitor-exit p0

    return-void

    .line 215
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcn/nubia/l/a/b$c;->a()Landroid/database/Cursor;

    move-result-object p1

    .line 217
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    iget-object v2, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/l/c/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 221
    iget-object v3, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/l/c/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/DCIM/Camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    const/4 v4, 0x1

    if-eqz p1, :cond_8

    .line 230
    :cond_4
    :goto_0
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 231
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 232
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ThumbnailManager"

    .line 233
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "albumPathCN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; albumPathEN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    .line 235
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 236
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, -0x2

    if-eq v8, v9, :cond_6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_6

    if-eqz v2, :cond_5

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v3, :cond_4

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcn/nubia/l/a/b;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 246
    :cond_6
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v7, Lcn/nubia/l/a/a;->b:Ljava/util/ArrayList;

    const-string v8, "^/"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v6, Lcn/nubia/l/a/a;->b:Ljava/util/ArrayList;

    const-string v7, "^/"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 253
    :cond_7
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 254
    throw v0

    .line 257
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(( "

    .line 258
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bucket_id"

    .line 259
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v3, 0x0

    move v5, v3

    :goto_2
    if-ge v5, v2, :cond_a

    .line 262
    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v2, -0x1

    if-eq v5, v6, :cond_9

    const-string v6, ","

    .line 264
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    const-string v0, ") AND (relative_path LIKE \'DCIM/Camera/%\'))"

    .line 268
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    const-string v2, " OR ("

    .line 272
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    if-ge v3, v0, :cond_c

    const-string v2, "relative_path LIKE "

    .line 274
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/%\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    if-eq v3, v2, :cond_b

    const-string v2, " OR "

    .line 277
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_c
    const-string v0, ")"

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v0, ")"

    .line 283
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/nubia/l/a/a;->c:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/b$c;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/l/a/b;->j:Lcn/nubia/l/a/b$c;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/l/a/b;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/l/a/b;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/l/a/b;)I
    .locals 0

    .line 25
    iget p0, p0, Lcn/nubia/l/a/b;->i:I

    return p0
.end method

.method static synthetic f(Lcn/nubia/l/a/b;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcn/nubia/l/a/b;->k:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcn/nubia/l/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    invoke-virtual {v1}, Lcn/nubia/l/a/a;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/l/a/b;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, v0, v0}, Lcn/nubia/l/a/b;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/l/a/b;)Lcn/nubia/l/a/a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    return-object p0
.end method

.method private g()V
    .locals 2

    const-string v0, "ThumbnailManager"

    const-string v1, "getLastThumbnail"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CreateThumbnailTask is running"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    if-eqz v0, :cond_1

    return-void

    .line 309
    :cond_1
    new-instance v0, Lcn/nubia/l/a/b$b;

    invoke-direct {v0, p0}, Lcn/nubia/l/a/b$b;-><init>(Lcn/nubia/l/a/b;)V

    iput-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 310
    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private h()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 318
    invoke-virtual {v0, v1}, Lcn/nubia/l/a/b$b;->cancel(Z)Z

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lcn/nubia/l/a/b;->b:Lcn/nubia/l/a/b$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 109
    iget v0, p0, Lcn/nubia/l/a/b;->i:I

    return v0
.end method

.method public a(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcn/nubia/l/a/b;->k:J

    return-void
.end method

.method public a(Lcn/nubia/l/a/b$c;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcn/nubia/l/a/b;->j:Lcn/nubia/l/a/b$c;

    return-void
.end method

.method public a(Lcn/nubia/l/a/b$d;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/l/b/d;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    iget-wide v2, p0, Lcn/nubia/l/a/b;->g:J

    sub-long v2, v0, v2

    .line 88
    iget-boolean v4, p0, Lcn/nubia/l/a/b;->f:Z

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_1

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string p1, "ThumbnailManager"

    const-string v0, "In slow update mode ignore too fast thumbnail update request"

    .line 90
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_1
    iput-wide v0, p0, Lcn/nubia/l/a/b;->g:J

    .line 96
    :cond_2
    iget-object v0, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    monitor-enter v0

    .line 97
    :try_start_0
    move-object v1, p1

    check-cast v1, Lcn/nubia/l/b/a;

    invoke-virtual {v1, p0}, Lcn/nubia/l/b/a;->a(Lcn/nubia/l/a/b;)V

    .line 98
    iget-object v1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    iput-object p1, p0, Lcn/nubia/l/a/b;->e:Lcn/nubia/l/b/d;

    goto :goto_0

    .line 101
    :cond_3
    new-instance v1, Lcn/nubia/l/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/l/a/b$a;-><init>(Lcn/nubia/l/a/b;Lcn/nubia/l/a/b$1;)V

    const/4 v2, 0x1

    new-array v3, v2, [Lcn/nubia/l/b/d;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Lcn/nubia/l/a/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/l/a/b;->d:Ljava/lang/Boolean;

    .line 104
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 2

    .line 71
    iget-boolean v0, p0, Lcn/nubia/l/a/b;->f:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcn/nubia/l/a/b;->g:J

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFastUpdateThumbnail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThumbnailManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-boolean p1, p0, Lcn/nubia/l/a/b;->f:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcn/nubia/l/a/b;->g()V

    return-void
.end method

.method public b(Lcn/nubia/l/a/b$d;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcn/nubia/l/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcn/nubia/l/a/b;->h()V

    return-void
.end method

.method public d()V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcn/nubia/l/a/b;->f()V

    return-void
.end method

.method public e()Lcn/nubia/l/a/a;
    .locals 1

    .line 199
    iget-object v0, p0, Lcn/nubia/l/a/b;->a:Lcn/nubia/l/a/a;

    return-object v0
.end method
