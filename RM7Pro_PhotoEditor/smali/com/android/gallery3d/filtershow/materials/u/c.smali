.class public Lcom/android/gallery3d/filtershow/materials/u/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Landroid/os/Handler;

.field private i:Lcom/android/gallery3d/filtershow/materials/d;

.field private j:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/materials/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/materials/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/android/gallery3d/filtershow/materials/q;

.field private m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->b:I

    iput v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->c:I

    const-string v1, "border"

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->g:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->i:Lcom/android/gallery3d/filtershow/materials/d;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->g:Landroid/content/Context;

    new-instance p2, Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {p2, p1}, Lcom/android/gallery3d/filtershow/materials/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->i:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {p0, p3}, Lcom/android/gallery3d/filtershow/materials/u/c;->j(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/gallery3d/filtershow/materials/u/c;->h(Ljava/lang/String;)V

    const-string p2, "token_info"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/materials/u/c;I)I
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->b:I

    return p1
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/materials/u/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/android/gallery3d/filtershow/materials/u/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/android/gallery3d/filtershow/materials/u/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->u()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/android/gallery3d/filtershow/materials/u/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->i:Lcom/android/gallery3d/filtershow/materials/d;

    const-class v1, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v0, v1, p1}, Lcom/android/gallery3d/filtershow/materials/d;->e(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private i()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/android/gallery3d/filtershow/materials/u/c;->q(JII)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/service/get_category.do?type_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&token_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/filtershow/materials/u/d;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/materials/u/d;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/gallery3d/filtershow/materials/u/a;->a(Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/u/b;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->r(Lcom/android/gallery3d/filtershow/materials/c;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->v()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    const-string v0, "border"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    goto :goto_1

    :cond_1
    const-string v0, "bubble"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    goto :goto_1

    :cond_2
    const-string v0, "sticker"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :goto_1
    return-void
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lc/c/a/b;

    invoke-direct {v0}, Lc/c/a/b;-><init>()V

    sget-object v1, Lc/c/a/f/h/b$a;->b:Lc/c/a/f/h/b$a;

    invoke-virtual {v0, v1, p1}, Lc/c/a/b;->c(Lc/c/a/f/h/b$a;Ljava/lang/String;)Lc/c/a/f/e;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/f/e;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "{\"code\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private o()V
    .locals 7

    const-string v0, ""

    const-string v1, "MaterialOnLine"

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->x()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->o()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/gallery3d/filtershow/materials/u/c;->q(JII)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/service/get_hot_resource.do?type_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->a:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "&time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "&token_id="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&key="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHotResource url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   result = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/gallery3d/filtershow/materials/u/e;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/materials/u/e;-><init>()V

    new-instance v4, Lcom/android/gallery3d/filtershow/materials/u/c$a;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/materials/u/c$a;-><init>(Lcom/android/gallery3d/filtershow/materials/u/c;)V

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/filtershow/materials/u/a;->a(Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/u/b;)Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/materials/c;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHotResource hotResources.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  resource = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/materials/c;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->b:I

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->i()V

    :cond_5
    iget v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "token_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "token_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    return-void
.end method

.method private p(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method private q(JII)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/materials/q;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    :cond_0
    const-string v0, ""

    const-string v1, "token_id="

    const-string v2, "time="

    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type_id="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "category_id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/materials/q;->k([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private r(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->e()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->q(JII)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/service/get_resource.do?category_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&time="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&token_id="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&key="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->f()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "MaterialOnLine"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/gallery3d/filtershow/materials/u/f;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->d:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/android/gallery3d/filtershow/materials/u/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {v1, p1, p2}, Lcom/android/gallery3d/filtershow/materials/u/a;->a(Ljava/lang/String;Lcom/android/gallery3d/filtershow/materials/u/b;)Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    if-lez p2, :cond_2

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/materials/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaterialData info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/materials/c;->m(I)V

    const-string v1, " setIsHotMaterial  1111111"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->k:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/materials/c;->m(I)V

    const-string v1, " setIsHotMaterial  0000000"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/materials/u/c;->w(Lcom/android/gallery3d/filtershow/materials/c;)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isMaterialCached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/c;->e()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->g(II)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaterialData  url= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaterialData  downloadResult= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_0

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/materials/c;->s(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->v()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method private u()Z
    .locals 11

    const-string v0, "deadline"

    const-string v1, "data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/service/get_token.do?uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->g:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/materials/u/c;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaterialOnLine"

    const-string v4, "getTokeyData needRequestToken...."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/gallery3d/filtershow/materials/u/c;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v4

    :goto_0
    const-string v7, "token_key"

    const-string v8, "token_id"

    if-ge v6, v5, :cond_3

    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    :cond_1
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " save  mTokenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTokenKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deadLine = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->v()V

    :cond_4
    :goto_1
    return v4
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private w(Lcom/android/gallery3d/filtershow/materials/c;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "MaterialOnLine"

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/materials/c;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mLocalResources = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageResource = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {p0, v1, p1}, Lcom/android/gallery3d/filtershow/materials/u/c;->z(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/c;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private x()Z
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    const-string v1, "token_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    const-string v1, "token_key"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " needRequestToken mTokenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTokenKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaterialOnLine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->c:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    const/4 v3, -0x1

    const-string v4, "user_id"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->c:I

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->i:Lcom/android/gallery3d/filtershow/materials/d;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/d;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private z(Lcom/android/gallery3d/filtershow/materials/c;Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->c()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/c;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/c;->c()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "isHotMaterial"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isNewMaterial"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->i:Lcom/android/gallery3d/filtershow/materials/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/materials/c;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "id = ?"

    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/android/gallery3d/filtershow/materials/d;->o(Ljava/lang/Object;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public f(Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/u/c$b;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/filtershow/materials/u/c$b;-><init>(Lcom/android/gallery3d/filtershow/materials/u/c;Lcom/android/gallery3d/filtershow/materials/c;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public g(II)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/gallery3d/filtershow/materials/u/c;->m(JII)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/service/download.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&rid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&time="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "&token_id="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&key="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/materials/u/c;->v()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public m(JII)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/gallery3d/filtershow/materials/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/materials/q;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "time="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "token_id="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "type="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->f:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->l:Lcom/android/gallery3d/filtershow/materials/q;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/materials/q;->k([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c;->e:Ljava/lang/String;

    return-object v0
.end method
