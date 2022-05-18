.class public Lu/aly/aw;
.super Ljava/lang/Object;
.source "ABTest.java"

# interfaces
.implements Lu/aly/ao;


# static fields
.field private static h:Lu/aly/aw;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lu/aly/aw;->h:Lu/aly/aw;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/aw;->a:Z

    .line 16
    iput v1, p0, Lu/aly/aw;->b:I

    .line 17
    iput v1, p0, Lu/aly/aw;->c:I

    .line 18
    iput v1, p0, Lu/aly/aw;->d:I

    .line 19
    iput v2, p0, Lu/aly/aw;->e:F

    .line 20
    iput v2, p0, Lu/aly/aw;->f:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/aw;->g:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lu/aly/aw;->g:Landroid/content/Context;

    .line 39
    invoke-virtual {p0, p2, p3}, Lu/aly/aw;->a(Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/aw;
    .locals 4

    .prologue
    .line 27
    const-class v1, Lu/aly/aw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/aw;->h:Lu/aly/aw;

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Lu/aly/x;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/x;->b()Lu/aly/x$a;

    move-result-object v0

    .line 29
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lu/aly/x$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lu/aly/x$a;->d(I)I

    move-result v0

    .line 31
    new-instance v3, Lu/aly/aw;

    invoke-direct {v3, p0, v2, v0}, Lu/aly/aw;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v3, Lu/aly/aw;->h:Lu/aly/aw;

    .line 34
    :cond_0
    sget-object v0, Lu/aly/aw;->h:Lu/aly/aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    const-string v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 80
    array-length v3, v2

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 84
    aget-object v3, v2, v0

    const-string v4, "SIG7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    aget-object v3, v2, v1

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 86
    aget-object v4, v2, v6

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    .line 87
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 88
    goto :goto_0

    .line 92
    :cond_2
    aget-object v3, v2, v0

    const-string v4, "FIXED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    aget-object v3, v2, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 94
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 95
    if-lt v3, v2, :cond_0

    if-lt v2, v1, :cond_0

    move v0, v1

    .line 96
    goto :goto_0
.end method

.method private b(Ljava/lang/String;I)F
    .locals 2

    .prologue
    .line 43
    mul-int/lit8 v0, p2, 0x2

    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    .line 46
    :cond_0
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    .line 47
    const/high16 v1, 0x49800000    # 1048576.0f

    .line 49
    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 105
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 110
    const/4 v0, 0x2

    aget-object v0, v4, v0

    const-string v3, "SIG13"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 111
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 113
    :goto_1
    iget v3, p0, Lu/aly/aw;->e:F

    cmpl-float v0, v3, v0

    if-lez v0, :cond_2

    .line 114
    iput-boolean v2, p0, Lu/aly/aw;->a:Z

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x0

    .line 119
    aget-object v3, v4, v2

    const-string v6, "SIG7"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    aget-object v0, v4, v8

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 121
    array-length v0, v6

    new-array v3, v0, [F

    move v0, v2

    .line 122
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 123
    aget-object v7, v6, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 127
    :cond_4
    const/4 v3, 0x0

    .line 128
    aget-object v6, v4, v9

    const-string v7, "RPT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 129
    const/4 v3, 0x5

    aget-object v3, v4, v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 130
    array-length v3, v6

    new-array v4, v3, [I

    move v3, v2

    .line 131
    :goto_3
    array-length v7, v6

    if-ge v3, v7, :cond_5

    .line 132
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v3

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object v3, v4

    :cond_6
    :goto_4
    move v4, v1

    move v1, v2

    .line 151
    :goto_5
    array-length v6, v0

    if-ge v1, v6, :cond_b

    .line 152
    aget v6, v0, v1

    add-float/2addr v4, v6

    .line 153
    iget v6, p0, Lu/aly/aw;->f:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_9

    .line 159
    :goto_6
    if-eq v1, v5, :cond_a

    .line 160
    iput-boolean v8, p0, Lu/aly/aw;->a:Z

    .line 161
    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lu/aly/aw;->d:I

    .line 162
    if-eqz v3, :cond_0

    .line 163
    aget v0, v3, v1

    iput v0, p0, Lu/aly/aw;->b:I

    goto/16 :goto_0

    .line 134
    :cond_7
    aget-object v6, v4, v9

    const-string v7, "DOM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    iget-object v6, p0, Lu/aly/aw;->g:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bj;->q(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 136
    iput-boolean v2, p0, Lu/aly/aw;->a:Z

    goto/16 :goto_0

    .line 140
    :cond_8
    const/4 v6, 0x5

    :try_start_0
    aget-object v4, v4, v6

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 141
    array-length v4, v6

    new-array v3, v4, [I

    move v4, v2

    .line 142
    :goto_7
    array-length v7, v6

    if-ge v4, v7, :cond_6

    .line 143
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 151
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 166
    :cond_a
    iput-boolean v2, p0, Lu/aly/aw;->a:Z

    goto/16 :goto_0

    .line 145
    :catch_0
    move-exception v4

    goto :goto_4

    :cond_b
    move v1, v5

    goto :goto_6

    :cond_c
    move v0, v1

    goto/16 :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 178
    const/4 v0, 0x0

    .line 179
    const/4 v2, 0x2

    aget-object v2, v4, v2

    const-string v5, "SIG13"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    const/4 v0, 0x3

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 182
    :cond_2
    iget v2, p0, Lu/aly/aw;->e:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_3

    .line 183
    iput-boolean v3, p0, Lu/aly/aw;->a:Z

    goto :goto_0

    .line 188
    :cond_3
    aget-object v0, v4, v3

    const-string v2, "FIXED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 192
    :goto_1
    const/4 v2, 0x0

    .line 193
    aget-object v5, v4, v8

    const-string v6, "RPT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 194
    aget-object v2, v4, v9

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 195
    array-length v2, v5

    new-array v4, v2, [I

    move v2, v3

    .line 196
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    .line 197
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v2

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move-object v2, v4

    .line 214
    :cond_5
    :goto_3
    if-eq v0, v1, :cond_8

    .line 215
    iput-boolean v7, p0, Lu/aly/aw;->a:Z

    .line 216
    iput v0, p0, Lu/aly/aw;->d:I

    .line 217
    if-eqz v2, :cond_0

    .line 218
    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    iput v0, p0, Lu/aly/aw;->b:I

    goto :goto_0

    .line 199
    :cond_6
    aget-object v5, v4, v8

    const-string v6, "DOM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 200
    iget-object v5, p0, Lu/aly/aw;->g:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bj;->q(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    iput-boolean v3, p0, Lu/aly/aw;->a:Z

    goto/16 :goto_0

    .line 205
    :cond_7
    const/4 v5, 0x5

    :try_start_0
    aget-object v4, v4, v5

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 206
    array-length v4, v5

    new-array v2, v4, [I

    move v4, v3

    .line 207
    :goto_4
    array-length v6, v5

    if-ge v4, v6, :cond_5

    .line 208
    aget-object v6, v5, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 221
    :cond_8
    iput-boolean v3, p0, Lu/aly/aw;->a:Z

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v4

    goto :goto_3

    :cond_9
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iput p2, p0, Lu/aly/aw;->c:I

    .line 55
    iget-object v0, p0, Lu/aly/aw;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    :cond_0
    iput-boolean v2, p0, Lu/aly/aw;->a:Z

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v0, v1}, Lu/aly/aw;->b(Ljava/lang/String;I)F

    move-result v1

    iput v1, p0, Lu/aly/aw;->e:F

    .line 62
    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lu/aly/aw;->b(Ljava/lang/String;I)F

    move-result v0

    iput v0, p0, Lu/aly/aw;->f:F

    .line 63
    const-string v0, "SIG7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    invoke-direct {p0, p1}, Lu/aly/aw;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    iput-boolean v2, p0, Lu/aly/aw;->a:Z

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lu/aly/bl;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_3
    :try_start_1
    const-string v0, "FIXED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0, p1}, Lu/aly/aw;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public a(Lu/aly/av;)V
    .locals 3

    .prologue
    .line 242
    iget-boolean v0, p0, Lu/aly/aw;->a:Z

    if-nez v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p1, Lu/aly/av;->b:Lu/aly/av$m;

    iget-object v0, v0, Lu/aly/av$m;->f:Ljava/util/Map;

    const-string v1, "client_test"

    iget v2, p0, Lu/aly/aw;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Lu/aly/x$a;)V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lu/aly/x$a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lu/aly/x$a;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lu/aly/aw;->a(Ljava/lang/String;I)V

    .line 250
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lu/aly/aw;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lu/aly/aw;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lu/aly/aw;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lu/aly/aw;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    const-string v1, " p13:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lu/aly/aw;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, " p07:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v1, p0, Lu/aly/aw;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, " policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v1, p0, Lu/aly/aw;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, " interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lu/aly/aw;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
