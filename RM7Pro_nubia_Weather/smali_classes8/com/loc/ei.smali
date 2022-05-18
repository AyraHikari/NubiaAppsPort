.class public final Lcom/loc/ei;
.super Ljava/lang/Object;
.source "AuthUtil.java"


# static fields
.field private static A:Z

.field private static B:I

.field private static C:Z

.field private static D:Z

.field private static E:Z

.field private static F:Z

.field private static G:J

.field private static H:Z

.field private static I:I

.field private static J:Z

.field private static K:I

.field private static L:Z

.field private static M:Ljava/lang/String;

.field private static N:J

.field static a:J

.field public static volatile b:J

.field static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:I

.field public static g:I

.field private static volatile h:Z

.field private static i:Z

.field private static j:I

.field private static k:I

.field private static l:Z

.field private static m:I

.field private static n:I

.field private static volatile o:I

.field private static p:Z

.field private static q:Z

.field private static r:I

.field private static s:J

.field private static t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile v:Z

.field private static w:Z

.field private static x:J

.field private static y:Z

.field private static z:D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    sput-boolean v2, Lcom/loc/ei;->h:Z

    sput-boolean v3, Lcom/loc/ei;->i:Z

    const/16 v0, 0x3e8

    sput v0, Lcom/loc/ei;->j:I

    const/16 v0, 0xc8

    sput v0, Lcom/loc/ei;->k:I

    sput-boolean v2, Lcom/loc/ei;->l:Z

    const/16 v0, 0x14

    sput v0, Lcom/loc/ei;->m:I

    sput v2, Lcom/loc/ei;->n:I

    sput v2, Lcom/loc/ei;->o:I

    sput-boolean v3, Lcom/loc/ei;->p:Z

    sput-boolean v3, Lcom/loc/ei;->q:Z

    const/4 v0, -0x1

    sput v0, Lcom/loc/ei;->r:I

    sput-wide v4, Lcom/loc/ei;->s:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/ei;->t:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/loc/ei;->u:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/loc/ei;->v:Z

    sput-boolean v3, Lcom/loc/ei;->w:Z

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/loc/ei;->x:J

    sput-boolean v2, Lcom/loc/ei;->y:Z

    const-wide v0, 0x3fe3c6a7ef9db22dL    # 0.618

    sput-wide v0, Lcom/loc/ei;->z:D

    sput-boolean v3, Lcom/loc/ei;->A:Z

    const/16 v0, 0x50

    sput v0, Lcom/loc/ei;->B:I

    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/loc/ei;->a:J

    sput-boolean v2, Lcom/loc/ei;->C:Z

    sput-boolean v3, Lcom/loc/ei;->D:Z

    sput-boolean v2, Lcom/loc/ei;->E:Z

    sput-wide v4, Lcom/loc/ei;->b:J

    sput-boolean v3, Lcom/loc/ei;->c:Z

    sput-boolean v3, Lcom/loc/ei;->F:Z

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/loc/ei;->G:J

    sput-boolean v3, Lcom/loc/ei;->H:Z

    sput v3, Lcom/loc/ei;->I:I

    sput-boolean v3, Lcom/loc/ei;->J:Z

    const/4 v0, 0x5

    sput v0, Lcom/loc/ei;->K:I

    sput-boolean v2, Lcom/loc/ei;->L:Z

    const-string v0, "CMjAzLjEwNy4xLjEvMTU0MDgxL2Q"

    sput-object v0, Lcom/loc/ei;->M:Ljava/lang/String;

    sput-wide v4, Lcom/loc/ei;->N:J

    sput-boolean v2, Lcom/loc/ei;->d:Z

    sput-boolean v2, Lcom/loc/ei;->e:Z

    const/16 v0, 0x5000

    sput v0, Lcom/loc/ei;->f:I

    const v0, 0xa4cb80

    sput v0, Lcom/loc/ei;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/loc/ei;->h:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ei;->h:Z

    invoke-static {}, Lcom/loc/ej;->c()Lcom/loc/t;

    move-result-object v0

    invoke-static {}, Lcom/loc/ej;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/loc/ei$1;

    invoke-direct {v2, p0}, Lcom/loc/ei$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/loc/l;->a(Landroid/content/Context;Lcom/loc/t;Ljava/lang/String;Lcom/loc/l$a;)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->i:Z

    return v0
.end method

.method public static a(J)Z
    .locals 8

    const/4 v0, 0x0

    sget-boolean v1, Lcom/loc/ei;->w:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v2

    sub-long/2addr v2, p0

    sget-wide v4, Lcom/loc/ei;->x:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    sget-wide v4, Lcom/loc/ei;->x:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lcom/loc/l$b;)Z
    .locals 13

    const/16 v7, 0x1f4

    const/16 v12, 0x14

    const/4 v0, 0x1

    const/16 v6, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "pref"

    invoke-static {p0, v3}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    :try_start_1
    iget-object v2, p1, Lcom/loc/l$b;->g:Lcom/loc/l$b$a;

    if-eqz v2, :cond_3

    iget-boolean v4, v2, Lcom/loc/l$b$a;->a:Z

    sput-boolean v4, Lcom/loc/ei;->i:Z

    const-string v4, "exception"

    sget-boolean v5, Lcom/loc/ei;->i:Z

    invoke-static {v3, v4, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    iget-object v2, v2, Lcom/loc/l$b$a;->c:Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    const-string v4, "fn"

    sget v5, Lcom/loc/ei;->j:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/ei;->j:I

    const-string v4, "mpn"

    sget v5, Lcom/loc/ei;->k:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/ei;->k:I

    if-le v4, v7, :cond_0

    const/16 v4, 0x1f4

    sput v4, Lcom/loc/ei;->k:I

    :cond_0
    sget v4, Lcom/loc/ei;->k:I

    if-ge v4, v6, :cond_1

    const/16 v4, 0x1e

    sput v4, Lcom/loc/ei;->k:I

    :cond_1
    const-string v4, "igu"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v5, Lcom/loc/ei;->l:Z

    invoke-static {v4, v5}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/loc/ei;->l:Z

    const-string v4, "ms"

    sget v5, Lcom/loc/ei;->m:I

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/ei;->m:I

    const-string v4, "rot"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/loc/ei;->o:I

    const-string v4, "pms"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/loc/ei;->n:I

    :cond_2
    sget v2, Lcom/loc/ei;->j:I

    sget-boolean v4, Lcom/loc/ei;->l:Z

    sget v5, Lcom/loc/ei;->m:I

    sget v6, Lcom/loc/ei;->n:I

    invoke-static {v2, v4, v5, v6}, Lcom/loc/ba;->a(IZII)V

    sget-boolean v2, Lcom/loc/ei;->l:Z

    sget v4, Lcom/loc/ei;->n:I

    invoke-static {v2, v4}, Lcom/loc/bc;->a(ZI)V

    const-string v2, "fn"

    sget v4, Lcom/loc/ei;->j:I

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v2, "mpn"

    sget v4, Lcom/loc/ei;->k:I

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v2, "igu"

    sget-boolean v4, Lcom/loc/ei;->l:Z

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "ms"

    sget v4, Lcom/loc/ei;->m:I

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v2, "rot"

    sget v4, Lcom/loc/ei;->o:I

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v2, "pms"

    sget v4, Lcom/loc/ei;->n:I

    invoke-static {v3, v2, v4}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/loc/ei;->c(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/loc/l$b;->f:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v4, :cond_6

    if-eqz v3, :cond_4

    :try_start_3
    invoke-static {v3}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_a

    :cond_4
    :goto_1
    return v0

    :catch_0
    move-exception v2

    :try_start_4
    const-string v4, "AuthUtil"

    const-string v5, "loadConfigDataUploadException"

    invoke-static {v2, v4, v5}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_5

    :try_start_5
    invoke-static {v0}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_b

    :cond_5
    :goto_3
    move v0, v1

    goto :goto_1

    :cond_6
    :try_start_6
    const-string v2, "13S"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_8

    :try_start_7
    const-string v2, "at"

    const/16 v6, 0x7b

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    sput-wide v6, Lcom/loc/ei;->a:J

    const-string v2, "13S_at"

    sget-wide v6, Lcom/loc/ei;->a:J

    invoke-static {v3, v2, v6, v7}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    if-eqz v5, :cond_7

    :try_start_8
    const-string v2, "re"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v6, Lcom/loc/ei;->c:Z

    invoke-static {v2, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->c:Z

    const-string v2, "fr"

    sget-boolean v6, Lcom/loc/ei;->c:Z

    invoke-static {v3, v2, v6}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_7
    :goto_5
    :try_start_9
    const-string v2, "nla"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v6, Lcom/loc/ei;->D:Z

    invoke-static {v2, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->D:Z

    const-string v2, "13S_nla"

    sget-boolean v6, Lcom/loc/ei;->D:Z

    invoke-static {v3, v2, v6}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    :try_start_a
    const-string v2, "asw"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v6, Lcom/loc/ei;->F:Z

    invoke-static {v2, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->F:Z

    const-string v2, "asw"

    sget-boolean v6, Lcom/loc/ei;->F:Z

    invoke-static {v3, v2, v6}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_7
    :try_start_b
    const-string v2, "mlpl"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_14

    if-eqz p0, :cond_14

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/loc/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "13S_mlpl"

    invoke-static {v3, v6, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/loc/ei;->a(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->E:Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    :goto_8
    :try_start_c
    const-string v2, "11G"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v5, "able"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/loc/ei;->w:Z

    invoke-static {v5, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/loc/ei;->w:Z

    if-eqz v5, :cond_9

    const-string v5, "c"

    const/16 v6, 0x12c

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    sput-wide v6, Lcom/loc/ei;->x:J

    :cond_9
    const-string v5, "fa"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/loc/ei;->y:Z

    invoke-static {v5, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/loc/ei;->y:Z

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3fc999999999999aL    # 0.2

    const-string v5, "ms"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    sput-wide v6, Lcom/loc/ei;->z:D

    const-string v2, "ca"

    sget-boolean v5, Lcom/loc/ei;->w:Z

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "ct"

    sget-wide v6, Lcom/loc/ei;->x:J

    invoke-static {v3, v2, v6, v7}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V

    const-string v2, "11G_fa"

    sget-boolean v5, Lcom/loc/ei;->y:Z

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "11G_ms"

    sget-wide v6, Lcom/loc/ei;->z:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_a
    :goto_9
    :try_start_d
    const-string v2, "13J"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v5, "able"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/loc/ei;->A:Z

    invoke-static {v5, v6}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/loc/ei;->A:Z

    if-eqz v5, :cond_b

    const-string v5, "c"

    sget v6, Lcom/loc/ei;->B:I

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/loc/ei;->B:I

    :cond_b
    const-string v2, "13J_able"

    sget-boolean v5, Lcom/loc/ei;->A:Z

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "13J_c"

    sget v5, Lcom/loc/ei;->B:I

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_c
    :goto_a
    :try_start_e
    const-string v1, "15O"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string v2, "able"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "fl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_d
    const-string v2, "iv"

    const/16 v5, 0x1e

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    sput-wide v6, Lcom/loc/ei;->G:J

    :goto_b
    const-string v1, "awsi"

    sget-wide v6, Lcom/loc/ei;->G:J

    invoke-static {v3, v1, v6, v7}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_e
    :goto_c
    :try_start_f
    const-string v1, "15U"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    const-string v2, "able"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/loc/ei;->H:Z

    invoke-static {v2, v5}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    const-string v5, "yn"

    sget v6, Lcom/loc/ei;->I:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "sysTime"

    sget-wide v8, Lcom/loc/ei;->N:J

    invoke-virtual {v1, v6, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    sput-wide v6, Lcom/loc/ei;->N:J

    const-string v1, "15ua"

    invoke-static {v3, v1, v2}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v1, "15un"

    invoke-static {v3, v1, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    const-string v1, "15ust"

    sget-wide v6, Lcom/loc/ei;->N:J

    invoke-static {v3, v1, v6, v7}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;J)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_f
    :goto_d
    if-eqz v4, :cond_11

    :try_start_10
    const-string v1, "17Y"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v2, "able"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/loc/ei;->d:Z

    invoke-static {v2, v5}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->d:Z

    const-string v2, "17ya"

    sget-boolean v5, Lcom/loc/ei;->d:Z

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "mup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/loc/ei;->e:Z

    invoke-static {v2, v5}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->e:Z

    const-string v2, "17ym"

    sget-boolean v5, Lcom/loc/ei;->e:Z

    invoke-static {v3, v2, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    const-string v2, "max"

    const/16 v5, 0x14

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_10

    const-string v5, "17yx"

    invoke-static {v3, v5, v2}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    mul-int/lit16 v2, v2, 0x400

    sput v2, Lcom/loc/ei;->f:I

    :cond_10
    const-string v2, "inv"

    const/4 v5, 0x3

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_11

    const-string v2, "17yi"

    invoke-static {v3, v2, v1}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    sput v1, Lcom/loc/ei;->g:I
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_11
    :goto_e
    if-eqz v4, :cond_12

    :try_start_11
    const-string v1, "17J"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v2, "able"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->J:Z

    const-string v4, "ok9"

    invoke-static {v3, v4, v2}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    if-eqz v2, :cond_12

    const-string v2, "auth"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ht"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/loc/ei;->M:Ljava/lang/String;

    const-string v4, "ok11"

    sget-object v5, Lcom/loc/ei;->M:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    const-string v2, "nr"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/loc/ei;->L:Z

    const-string v2, "tm"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_12

    if-ge v1, v12, :cond_12

    sput v1, Lcom/loc/ei;->K:I

    const-string v1, "ok10"

    sget v2, Lcom/loc/ei;->K:I

    invoke-static {v3, v1, v2}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_12
    :goto_f
    if-eqz v3, :cond_4

    :try_start_12
    invoke-static {v3}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v2

    :try_start_13
    const-string v6, "AuthUtil"

    const-string v7, "requestSdkAuthInterval"

    invoke-static {v2, v6, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v2

    :try_start_14
    const-string v5, "AuthUtil"

    const-string v6, "loadConfigAbleStatus"

    invoke-static {v2, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_1
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    :goto_10
    if-eqz v3, :cond_13

    :try_start_15
    invoke-static {v3}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    :cond_13
    :goto_11
    throw v0

    :catch_5
    move-exception v2

    :try_start_16
    const-string v6, "AuthUtil"

    const-string v7, "checkReLocationAble"

    invoke-static {v2, v6, v7}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_5

    :cond_14
    const/4 v2, 0x0

    :try_start_17
    sput-boolean v2, Lcom/loc/ei;->E:Z

    const-string v2, "13S_mlpl"

    invoke-static {v3, v2}, Lcom/loc/eo;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_8

    :catch_6
    move-exception v2

    goto/16 :goto_8

    :catch_7
    move-exception v2

    :try_start_18
    const-string v5, "AuthUtil"

    const-string v6, "loadConfigDataCacheAble"

    invoke-static {v2, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_8
    move-exception v2

    const-string v5, "AuthUtil"

    const-string v6, "loadConfigDataGpsGeoAble"

    invoke-static {v2, v5, v6}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_a

    :cond_15
    const-wide/16 v6, -0x1

    :try_start_19
    sput-wide v6, Lcom/loc/ei;->G:J
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_b

    :catch_9
    move-exception v1

    goto/16 :goto_c

    :catch_a
    move-exception v1

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto :goto_11

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_10

    :catch_d
    move-exception v0

    move-object v0, v2

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto :goto_f

    :catch_f
    move-exception v1

    goto/16 :goto_e

    :catch_10
    move-exception v1

    goto/16 :goto_d

    :catch_11
    move-exception v2

    goto/16 :goto_7

    :catch_12
    move-exception v2

    goto/16 :goto_6
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONArray;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p0, :cond_0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/loc/ep;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/loc/ei;->k:I

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/loc/ei;->v:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/ei;->v:Z

    :try_start_0
    const-string v0, "pref"

    const-string v1, "exception"

    sget-boolean v2, Lcom/loc/ei;->i:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->i:Z

    invoke-static {p0}, Lcom/loc/ei;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-string v0, "pref"

    const-string v1, "fn"

    sget v2, Lcom/loc/ei;->j:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->j:I

    const-string v0, "pref"

    const-string v1, "mpn"

    sget v2, Lcom/loc/ei;->k:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->k:I

    const-string v0, "pref"

    const-string v1, "igu"

    sget-boolean v2, Lcom/loc/ei;->l:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->l:Z

    const-string v0, "pref"

    const-string v1, "ms"

    sget v2, Lcom/loc/ei;->m:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->m:I

    const-string v0, "pref"

    const-string v1, "rot"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->o:I

    const-string v0, "pref"

    const-string v1, "pms"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->n:I

    sget v0, Lcom/loc/ei;->j:I

    sget-boolean v1, Lcom/loc/ei;->l:Z

    sget v2, Lcom/loc/ei;->m:I

    sget v3, Lcom/loc/ei;->n:I

    invoke-static {v0, v1, v2, v3}, Lcom/loc/ba;->a(IZII)V

    sget-boolean v0, Lcom/loc/ei;->l:Z

    sget v1, Lcom/loc/ei;->n:I

    invoke-static {v0, v1}, Lcom/loc/bc;->a(ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    const-string v0, "pref"

    const-string v1, "ca"

    sget-boolean v2, Lcom/loc/ei;->w:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->w:Z

    const-string v0, "pref"

    const-string v1, "ct"

    sget-wide v2, Lcom/loc/ei;->x:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->x:J

    const-string v0, "pref"

    const-string v1, "11G_fa"

    sget-boolean v2, Lcom/loc/ei;->y:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->y:Z

    const-string v0, "pref"

    const-string v1, "11G_ms"

    sget-wide v2, Lcom/loc/ei;->z:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->z:D

    const-wide v0, 0x3fc999999999999aL    # 0.2

    sget-wide v2, Lcom/loc/ei;->z:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->z:D
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    const-string v0, "pref"

    const-string v1, "fr"

    sget-boolean v2, Lcom/loc/ei;->c:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->c:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    const-string v0, "pref"

    const-string v1, "asw"

    sget-boolean v2, Lcom/loc/ei;->F:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->F:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    const-string v0, "pref"

    const-string v1, "awsi"

    sget-wide v2, Lcom/loc/ei;->G:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->G:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    const-string v0, "pref"

    const-string v1, "15ua"

    sget-boolean v2, Lcom/loc/ei;->H:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->H:Z

    const-string v0, "pref"

    const-string v1, "15un"

    sget v2, Lcom/loc/ei;->I:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->I:I

    const-string v0, "pref"

    const-string v1, "15ust"

    sget-wide v2, Lcom/loc/ei;->N:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->N:J
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    const-string v0, "pref"

    const-string v1, "ok9"

    sget-boolean v2, Lcom/loc/ei;->J:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->J:Z

    const-string v0, "pref"

    const-string v1, "ok10"

    sget v2, Lcom/loc/ei;->K:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->K:I

    const-string v0, "pref"

    const-string v1, "ok11"

    sget-object v2, Lcom/loc/ei;->M:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/ei;->M:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    const-string v0, "pref"

    const-string v1, "17ya"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->d:Z

    const-string v0, "pref"

    const-string v1, "17ym"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->e:Z

    const-string v0, "pref"

    const-string v1, "17yi"

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/loc/ei;->g:I

    const-string v0, "pref"

    const-string v1, "17yx"

    const/16 v2, 0x64

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    sput v0, Lcom/loc/ei;->f:I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->b:J

    const-string v0, "pref"

    const-string v1, "13S_at"

    sget-wide v2, Lcom/loc/ei;->a:J

    invoke-static {p0, v0, v1, v2, v3}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/loc/ei;->a:J

    const-string v0, "pref"

    const-string v1, "13S_nla"

    sget-boolean v2, Lcom/loc/ei;->D:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->D:Z

    const-string v0, "pref"

    const-string v1, "13J_able"

    sget-boolean v2, Lcom/loc/ei;->A:Z

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->A:Z

    const-string v0, "pref"

    const-string v1, "13J_c"

    sget v2, Lcom/loc/ei;->B:I

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/loc/ei;->B:I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    invoke-static {p0}, Lcom/loc/l;->b(Landroid/content/Context;)V

    :try_start_a
    const-string v0, "pref"

    const-string v1, "13S_mlpl"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/loc/eo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/loc/ei;->a(Landroid/content/Context;Lorg/json/JSONArray;)Z

    move-result v0

    sput-boolean v0, Lcom/loc/ei;->E:Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AuthUtil"

    const-string v2, "loadLastAbleState p1"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_8

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    goto/16 :goto_6

    :catch_7
    move-exception v0

    goto/16 :goto_5

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2
.end method

.method public static c()I
    .locals 1

    sget v0, Lcom/loc/ei;->o:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/loc/ei;->o:I

    :cond_0
    sget v0, Lcom/loc/ei;->o:I

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/loc/ej;->c()Lcom/loc/t;

    move-result-object v0

    sget-boolean v1, Lcom/loc/ei;->i:Z

    invoke-virtual {v0, v1}, Lcom/loc/t;->a(Z)V

    invoke-static {p0, v0}, Lcom/loc/ab;->a(Landroid/content/Context;Lcom/loc/t;)Lcom/loc/ab;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d()J
    .locals 2

    sget-wide v0, Lcom/loc/ei;->x:J

    return-wide v0
.end method

.method public static e()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->w:Z

    return v0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->y:Z

    return v0
.end method

.method public static g()D
    .locals 2

    sget-wide v0, Lcom/loc/ei;->z:D

    return-wide v0
.end method

.method public static h()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->A:Z

    return v0
.end method

.method public static i()I
    .locals 1

    sget v0, Lcom/loc/ei;->B:I

    return v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->D:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->E:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->c:Z

    return v0
.end method

.method public static m()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->F:Z

    return v0
.end method

.method public static n()J
    .locals 2

    sget-wide v0, Lcom/loc/ei;->G:J

    return-wide v0
.end method

.method public static o()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->L:Z

    return v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->J:Z

    return v0
.end method

.method public static q()I
    .locals 1

    sget v0, Lcom/loc/ei;->K:I

    return v0
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/ei;->M:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s()Z
    .locals 1

    sget-boolean v0, Lcom/loc/ei;->H:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/loc/ei;->I:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()I
    .locals 1

    sget v0, Lcom/loc/ei;->I:I

    return v0
.end method

.method public static u()J
    .locals 2

    sget-wide v0, Lcom/loc/ei;->N:J

    return-wide v0
.end method
