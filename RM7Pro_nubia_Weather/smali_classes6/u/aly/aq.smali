.class public Lu/aly/aq;
.super Ljava/lang/Object;
.source "Sender.java"


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static g:Landroid/content/Context;


# instance fields
.field private d:Lu/aly/v;

.field private e:Lu/aly/x;

.field private final f:I

.field private h:Lu/aly/as;

.field private i:Lu/aly/al;

.field private j:Lu/aly/av;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/as;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lu/aly/aq;->f:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/aq;->k:Z

    .line 61
    invoke-static {p1}, Lu/aly/v;->a(Landroid/content/Context;)Lu/aly/v;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->d:Lu/aly/v;

    .line 62
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->e:Lu/aly/x;

    .line 64
    sput-object p1, Lu/aly/aq;->g:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lu/aly/aq;->h:Lu/aly/as;

    .line 66
    new-instance v0, Lu/aly/al;

    invoke-direct {v0, p1}, Lu/aly/al;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/aq;->i:Lu/aly/al;

    .line 67
    iget-object v0, p0, Lu/aly/aq;->i:Lu/aly/al;

    iget-object v1, p0, Lu/aly/aq;->h:Lu/aly/as;

    invoke-virtual {v0, v1}, Lu/aly/al;->a(Lu/aly/aj;)V

    .line 68
    return-void
.end method

.method static synthetic a(Lu/aly/aq;[B)I
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lu/aly/aq;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 211
    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    .line 212
    new-instance v0, Lu/aly/bs;

    new-instance v2, Lu/aly/ch$a;

    invoke-direct {v2}, Lu/aly/ch$a;-><init>()V

    invoke-direct {v0, v2}, Lu/aly/bs;-><init>(Lu/aly/cq;)V

    .line 216
    :try_start_0
    invoke-virtual {v0, v1, p1}, Lu/aly/bs;->a(Lu/aly/bp;[B)V

    .line 218
    iget v0, v1, Lu/aly/bf;->a:I

    if-ne v0, v3, :cond_0

    .line 219
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/x;

    invoke-virtual {v1}, Lu/aly/bf;->i()Lu/aly/bd;

    move-result-object v2

    invoke-virtual {v0, v2}, Lu/aly/x;->b(Lu/aly/bd;)V

    .line 220
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/x;

    invoke-virtual {v0}, Lu/aly/x;->d()V

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send log:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lu/aly/bf;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bl;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    iget v0, v1, Lu/aly/bf;->a:I

    if-ne v0, v3, :cond_1

    .line 228
    const/4 v0, 0x2

    .line 230
    :goto_1
    return v0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method static synthetic a(Lu/aly/aq;)Lu/aly/al;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lu/aly/aq;->i:Lu/aly/al;

    return-object v0
.end method

.method static synthetic b(Lu/aly/aq;)Lu/aly/as;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/as;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->j()Lcom/umeng/analytics/h$a;

    move-result-object v0

    .line 96
    new-instance v1, Lu/aly/aq$1;

    invoke-direct {v1, p0}, Lu/aly/aq$1;-><init>(Lu/aly/aq;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h$a;->a(Lcom/umeng/analytics/h$b;)V

    .line 147
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->a()V

    .line 151
    iget-object v1, p0, Lu/aly/aq;->j:Lu/aly/av;

    .line 153
    :try_start_0
    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->b()Lu/aly/bc;

    move-result-object v0

    .line 154
    new-instance v2, Lu/aly/by;

    invoke-direct {v2}, Lu/aly/by;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/by;->a(Lu/aly/bp;)[B

    move-result-object v0

    .line 155
    iget-object v2, v1, Lu/aly/av;->a:Lu/aly/av$n;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lu/aly/av$n;->O:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    sget-object v0, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->b(Lu/aly/av;)[B

    move-result-object v0

    .line 161
    sget-object v1, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_1
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_1
    if-nez v0, :cond_2

    .line 166
    const-string v0, "message is null"

    invoke-static {v0}, Lu/aly/bl;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_2
    iget-boolean v1, p0, Lu/aly/aq;->k:Z

    if-nez v1, :cond_3

    .line 172
    sget-object v1, Lu/aly/aq;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/t;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    .line 177
    :goto_2
    invoke-virtual {v0}, Lu/aly/t;->c()[B

    move-result-object v1

    .line 178
    sget-object v0, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/h;->h()V

    .line 181
    iget-object v0, p0, Lu/aly/aq;->i:Lu/aly/al;

    invoke-virtual {v0, v1}, Lu/aly/al;->a([B)[B

    move-result-object v0

    .line 182
    if-nez v0, :cond_4

    .line 183
    const/4 v0, 0x1

    .line 188
    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 202
    :pswitch_0
    iget-boolean v0, p0, Lu/aly/aq;->l:Z

    if-nez v0, :cond_0

    .line 203
    sget-object v0, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/h;->a(Landroid/content/Context;)Lcom/umeng/analytics/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/h;->a([B)V

    goto :goto_1

    .line 174
    :cond_3
    sget-object v1, Lu/aly/aq;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/aq;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/t;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/t;

    move-result-object v0

    goto :goto_2

    .line 185
    :cond_4
    invoke-direct {p0, v0}, Lu/aly/aq;->a([B)I

    move-result v0

    goto :goto_3

    .line 190
    :pswitch_1
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->l()V

    .line 194
    :cond_5
    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/v;

    invoke-virtual {v0}, Lu/aly/v;->d()V

    .line 195
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->k()V

    .line 196
    const-wide/16 v0, 0x0

    sput-wide v0, Lu/aly/av;->c:J

    goto :goto_1

    .line 199
    :pswitch_2
    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/as;

    invoke-virtual {v0}, Lu/aly/as;->k()V

    goto :goto_1

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lu/aly/aq;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lu/aly/aq;->l:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lu/aly/aq;->j:Lu/aly/av;

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0}, Lu/aly/aq;->c()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-direct {p0}, Lu/aly/aq;->b()V

    goto :goto_0
.end method

.method public a(Lu/aly/ao;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/x;

    invoke-virtual {v0, p1}, Lu/aly/x;->a(Lu/aly/ao;)V

    .line 84
    return-void
.end method

.method public a(Lu/aly/av;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lu/aly/aq;->j:Lu/aly/av;

    .line 72
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, Lu/aly/aq;->k:Z

    .line 76
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lu/aly/aq;->l:Z

    .line 80
    return-void
.end method
