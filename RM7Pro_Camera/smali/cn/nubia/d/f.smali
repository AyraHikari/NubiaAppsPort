.class Lcn/nubia/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/d/f$a;,
        Lcn/nubia/d/f$b;,
        Lcn/nubia/d/f$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final s:S

.field private static final t:S

.field private static final u:S

.field private static final v:S

.field private static final w:S

.field private static final x:S

.field private static final y:S


# instance fields
.field private final b:Lcn/nubia/d/b;

.field private final c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Lcn/nubia/d/h;

.field private h:Lcn/nubia/d/f$c;

.field private i:Lcn/nubia/d/h;

.field private j:Lcn/nubia/d/h;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:[B

.field private p:I

.field private q:I

.field private final r:Lcn/nubia/d/a;

.field private final z:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 142
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcn/nubia/d/f;->a:Ljava/nio/charset/Charset;

    .line 165
    sget v0, Lcn/nubia/d/a;->C:I

    .line 166
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->s:S

    .line 167
    sget v0, Lcn/nubia/d/a;->D:I

    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->t:S

    .line 168
    sget v0, Lcn/nubia/d/a;->ap:I

    .line 169
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->u:S

    .line 170
    sget v0, Lcn/nubia/d/a;->E:I

    .line 171
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->v:S

    .line 172
    sget v0, Lcn/nubia/d/a;->F:I

    .line 173
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->w:S

    .line 174
    sget v0, Lcn/nubia/d/a;->i:I

    .line 175
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->x:S

    .line 176
    sget v0, Lcn/nubia/d/a;->m:I

    .line 177
    invoke-static {v0}, Lcn/nubia/d/a;->a(I)S

    move-result v0

    sput-short v0, Lcn/nubia/d/f;->y:S

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;ILcn/nubia/d/a;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcn/nubia/d/f;->d:I

    .line 149
    iput v0, p0, Lcn/nubia/d/f;->e:I

    .line 157
    iput-boolean v0, p0, Lcn/nubia/d/f;->l:Z

    .line 159
    iput v0, p0, Lcn/nubia/d/f;->n:I

    .line 179
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    if-eqz p1, :cond_4

    .line 209
    iput-object p3, p0, Lcn/nubia/d/f;->r:Lcn/nubia/d/a;

    .line 210
    invoke-direct {p0, p1}, Lcn/nubia/d/f;->a(Ljava/io/InputStream;)Z

    move-result p3

    iput-boolean p3, p0, Lcn/nubia/d/f;->l:Z

    .line 211
    new-instance p3, Lcn/nubia/d/b;

    invoke-direct {p3, p1}, Lcn/nubia/d/b;-><init>(Ljava/io/InputStream;)V

    iput-object p3, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    .line 212
    iput p2, p0, Lcn/nubia/d/f;->c:I

    .line 213
    iget-boolean p1, p0, Lcn/nubia/d/f;->l:Z

    if-nez p1, :cond_0

    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcn/nubia/d/f;->q()V

    .line 218
    invoke-virtual {p3}, Lcn/nubia/d/b;->f()J

    move-result-wide p1

    const-wide/32 v1, 0x7fffffff

    cmp-long p3, p1, v1

    if-gtz p3, :cond_3

    long-to-int p3, p1

    .line 222
    iput p3, p0, Lcn/nubia/d/f;->p:I

    .line 223
    iput v0, p0, Lcn/nubia/d/f;->f:I

    .line 224
    invoke-direct {p0, v0}, Lcn/nubia/d/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcn/nubia/d/f;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    :cond_1
    invoke-direct {p0, v0, p1, p2}, Lcn/nubia/d/f;->a(IJ)V

    const-wide/16 v0, 0x8

    cmp-long p1, p1, v0

    if-eqz p1, :cond_2

    add-int/lit8 p3, p3, -0x8

    .line 227
    new-array p1, p3, [B

    iput-object p1, p0, Lcn/nubia/d/f;->o:[B

    .line 228
    invoke-virtual {p0, p1}, Lcn/nubia/d/f;->a([B)I

    :cond_2
    return-void

    .line 220
    :cond_3
    new-instance p3, Lcn/nubia/d/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw p3

    .line 204
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Null argument inputStream to ExifParser"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static a(Ljava/io/InputStream;Lcn/nubia/d/a;)Lcn/nubia/d/f;
    .locals 2

    .line 254
    new-instance v0, Lcn/nubia/d/f;

    const/16 v1, 0x3f

    invoke-direct {v0, p0, v1, p1}, Lcn/nubia/d/f;-><init>(Ljava/io/InputStream;ILcn/nubia/d/a;)V

    return-object v0
.end method

.method private a(IJ)V
    .locals 2

    .line 521
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcn/nubia/d/f$b;

    invoke-direct {p0, p1}, Lcn/nubia/d/f;->b(I)Z

    move-result v1

    invoke-direct {p3, p1, v1}, Lcn/nubia/d/f$b;-><init>(IZ)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 525
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lcn/nubia/d/f$c;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Lcn/nubia/d/f$c;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(II)Z
    .locals 1

    .line 638
    iget-object v0, p0, Lcn/nubia/d/f;->r:Lcn/nubia/d/a;

    invoke-virtual {v0}, Lcn/nubia/d/a;->b()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 642
    :cond_0
    invoke-static {p2, p1}, Lcn/nubia/d/a;->a(II)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/io/InputStream;)Z
    .locals 7

    .line 754
    new-instance v0, Lcn/nubia/d/b;

    invoke-direct {v0, p1}, Lcn/nubia/d/b;-><init>(Ljava/io/InputStream;)V

    .line 755
    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result p1

    const/16 v1, -0x28

    if-ne p1, v1, :cond_4

    .line 759
    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result p1

    :goto_0
    const/16 v1, -0x27

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    .line 761
    invoke-static {p1}, Lcn/nubia/d/j;->a(S)Z

    move-result v1

    if-nez v1, :cond_3

    .line 762
    invoke-virtual {v0}, Lcn/nubia/d/b;->d()I

    move-result v1

    const/16 v3, -0x1f

    if-ne p1, v3, :cond_0

    const/16 p1, 0x8

    if-lt v1, p1, :cond_0

    .line 769
    invoke-virtual {v0}, Lcn/nubia/d/b;->e()I

    move-result p1

    .line 770
    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v3

    add-int/lit8 v1, v1, -0x6

    const v4, 0x45786966

    if-ne p1, v4, :cond_0

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v0}, Lcn/nubia/d/b;->a()I

    move-result p1

    iput p1, p0, Lcn/nubia/d/f;->q:I

    .line 774
    iput v1, p0, Lcn/nubia/d/f;->m:I

    add-int/2addr p1, v1

    .line 775
    iput p1, p0, Lcn/nubia/d/f;->n:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    if-lt v1, p1, :cond_2

    add-int/lit8 v1, v1, -0x2

    int-to-long v3, v1

    .line 780
    invoke-virtual {v0, v3, v4}, Lcn/nubia/d/b;->skip(J)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_1

    goto :goto_1

    .line 784
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p1, "ExifParser"

    const-string v0, "Invalid JPEG format."

    .line 781
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v2

    .line 756
    :cond_4
    new-instance p1, Lcn/nubia/d/d;

    const-string v0, "Invalid JPEG format"

    invoke-direct {p1, v0}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(IJ)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lcn/nubia/d/f$c;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p1}, Lcn/nubia/d/f$c;-><init>(II)V

    invoke-virtual {v0, p2, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v1, :cond_6

    const/4 v3, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_0

    return v0

    .line 190
    :cond_0
    iget p1, p0, Lcn/nubia/d/f;->c:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 192
    :cond_2
    iget p1, p0, Lcn/nubia/d/f;->c:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 188
    :cond_4
    iget p1, p0, Lcn/nubia/d/f;->c:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 186
    :cond_6
    iget p1, p0, Lcn/nubia/d/f;->c:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 184
    :cond_8
    iget p1, p0, Lcn/nubia/d/f;->c:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private c(I)V
    .locals 3

    .line 497
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/b;->b(J)V

    .line 498
    :goto_0
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lcn/nubia/d/h;)V
    .locals 5

    .line 587
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 590
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/d/h;->b()S

    move-result v0

    .line 591
    invoke-virtual {p1}, Lcn/nubia/d/h;->a()I

    move-result v1

    .line 592
    sget-short v2, Lcn/nubia/d/f;->s:S

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    sget v2, Lcn/nubia/d/a;->C:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x2

    .line 593
    invoke-direct {p0, v0}, Lcn/nubia/d/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 594
    invoke-direct {p0, v3}, Lcn/nubia/d/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 595
    :cond_1
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/d/f;->a(IJ)V

    goto/16 :goto_2

    .line 597
    :cond_2
    sget-short v2, Lcn/nubia/d/f;->t:S

    if-ne v0, v2, :cond_3

    sget v2, Lcn/nubia/d/a;->D:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    .line 598
    invoke-direct {p0, v0}, Lcn/nubia/d/f;->b(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 599
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcn/nubia/d/f;->a(IJ)V

    goto/16 :goto_2

    .line 601
    :cond_3
    sget-short v2, Lcn/nubia/d/f;->u:S

    if-ne v0, v2, :cond_4

    sget v2, Lcn/nubia/d/a;->ap:I

    .line 602
    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 603
    invoke-direct {p0, v3}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 604
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    invoke-direct {p0, v3, v0, v1}, Lcn/nubia/d/f;->a(IJ)V

    goto/16 :goto_2

    .line 606
    :cond_4
    sget-short v2, Lcn/nubia/d/f;->v:S

    if-ne v0, v2, :cond_5

    sget v2, Lcn/nubia/d/a;->E:I

    .line 607
    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 608
    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 609
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcn/nubia/d/f;->a(J)V

    goto/16 :goto_2

    .line 611
    :cond_5
    sget-short v2, Lcn/nubia/d/f;->w:S

    if-ne v0, v2, :cond_6

    sget v2, Lcn/nubia/d/a;->F:I

    .line 612
    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 613
    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 614
    iput-object p1, p0, Lcn/nubia/d/f;->j:Lcn/nubia/d/h;

    goto :goto_2

    .line 616
    :cond_6
    sget-short v2, Lcn/nubia/d/f;->x:S

    if-ne v0, v2, :cond_9

    sget v2, Lcn/nubia/d/a;->i:I

    invoke-direct {p0, v1, v2}, Lcn/nubia/d/f;->a(II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 617
    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 618
    invoke-virtual {p1}, Lcn/nubia/d/h;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    :goto_0
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    if-ge v4, v0, :cond_a

    .line 620
    invoke-virtual {p1}, Lcn/nubia/d/h;->c()S

    move-result v0

    if-ne v0, v3, :cond_7

    .line 621
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcn/nubia/d/f;->b(IJ)V

    goto :goto_1

    .line 623
    :cond_7
    invoke-virtual {p1, v4}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    invoke-direct {p0, v4, v0, v1}, Lcn/nubia/d/f;->b(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 627
    :cond_8
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/nubia/d/h;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/nubia/d/f$a;

    invoke-direct {v2, p1, v4}, Lcn/nubia/d/f$a;-><init>(Lcn/nubia/d/h;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 630
    :cond_9
    sget-short v2, Lcn/nubia/d/f;->y:S

    if-ne v0, v2, :cond_a

    sget v0, Lcn/nubia/d/a;->m:I

    .line 631
    invoke-direct {p0, v1, v0}, Lcn/nubia/d/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 632
    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcn/nubia/d/h;->f()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 633
    iput-object p1, p0, Lcn/nubia/d/f;->i:Lcn/nubia/d/h;

    :cond_a
    :goto_2
    return-void
.end method

.method private n()Z
    .locals 1

    .line 198
    iget v0, p0, Lcn/nubia/d/f;->c:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()Z
    .locals 5

    .line 392
    iget v0, p0, Lcn/nubia/d/f;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    return v1

    .line 401
    :cond_0
    invoke-direct {p0, v2}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    return v0

    .line 398
    :cond_1
    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    return v0

    .line 394
    :cond_2
    invoke-direct {p0, v3}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 395
    invoke-direct {p0, v2}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 396
    invoke-direct {p0, v4}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    return v1
.end method

.method private p()Lcn/nubia/d/h;
    .locals 13

    .line 534
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v2

    .line 535
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v0

    .line 536
    iget-object v1, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v1}, Lcn/nubia/d/b;->f()J

    move-result-wide v3

    const-wide/32 v7, 0x7fffffff

    cmp-long v1, v3, v7

    if-gtz v1, :cond_5

    .line 542
    invoke-static {v0}, Lcn/nubia/d/h;->a(S)Z

    move-result v1

    const/4 v5, 0x1

    const/4 v9, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 543
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "Tag %04x: Invalid data type %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExifParser"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/d/b;->skip(J)J

    const/4 v0, 0x0

    return-object v0

    .line 548
    :cond_0
    new-instance v10, Lcn/nubia/d/h;

    long-to-int v11, v3

    iget v6, p0, Lcn/nubia/d/f;->f:I

    if-eqz v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    move-object v1, v10

    move v3, v0

    move v4, v11

    move v5, v6

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcn/nubia/d/h;-><init>(SSIIZ)V

    .line 550
    invoke-virtual {v10}, Lcn/nubia/d/h;->d()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_4

    .line 552
    iget-object v1, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v1}, Lcn/nubia/d/b;->f()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-gtz v3, :cond_3

    .line 559
    iget v3, p0, Lcn/nubia/d/f;->p:I

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    .line 560
    new-array v0, v11, [B

    .line 561
    iget-object v3, p0, Lcn/nubia/d/f;->o:[B

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x8

    invoke-static {v3, v1, v0, v9, v11}, Lcn/nubia/d/m;->a([BI[BII)V

    .line 563
    invoke-virtual {v10, v0}, Lcn/nubia/d/h;->a([B)Z

    goto :goto_1

    :cond_2
    long-to-int v0, v1

    .line 565
    invoke-virtual {v10, v0}, Lcn/nubia/d/h;->g(I)V

    goto :goto_1

    .line 554
    :cond_3
    new-instance v0, Lcn/nubia/d/d;

    const-string v1, "offset is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_4
    invoke-virtual {v10}, Lcn/nubia/d/h;->k()Z

    move-result v0

    .line 570
    invoke-virtual {v10, v9}, Lcn/nubia/d/h;->a(Z)V

    .line 572
    invoke-virtual {p0, v10}, Lcn/nubia/d/f;->b(Lcn/nubia/d/h;)V

    .line 573
    invoke-virtual {v10, v0}, Lcn/nubia/d/h;->a(Z)V

    .line 574
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    rsub-int/lit8 v1, v1, 0x4

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcn/nubia/d/b;->skip(J)J

    .line 576
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->a()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v10, v0}, Lcn/nubia/d/h;->g(I)V

    :goto_1
    return-object v10

    .line 538
    :cond_5
    new-instance v0, Lcn/nubia/d/d;

    const-string v1, "Number of component is larger then Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private q()V
    .locals 3

    .line 738
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v0

    const-string v1, "Invalid TIFF header"

    const/16 v2, 0x4949

    if-ne v2, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcn/nubia/d/b;->a(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d4d

    if-ne v2, v0, :cond_2

    .line 742
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Lcn/nubia/d/b;->a(Ljava/nio/ByteOrder;)V

    .line 747
    :goto_0
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_1

    return-void

    .line 748
    :cond_1
    new-instance v0, Lcn/nubia/d/d;

    invoke-direct {v0, v1}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 744
    :cond_2
    new-instance v0, Lcn/nubia/d/d;

    invoke-direct {v0, v1}, Lcn/nubia/d/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected a()I
    .locals 10

    .line 272
    iget-boolean v0, p0, Lcn/nubia/d/f;->l:Z

    const/4 v1, 0x5

    if-nez v0, :cond_0

    return v1

    .line 275
    :cond_0
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->a()I

    move-result v0

    .line 276
    iget v2, p0, Lcn/nubia/d/f;->d:I

    const/4 v3, 0x2

    add-int/2addr v2, v3

    iget v4, p0, Lcn/nubia/d/f;->e:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v2, v4

    const/4 v4, 0x1

    if-ge v0, v2, :cond_3

    .line 278
    invoke-direct {p0}, Lcn/nubia/d/f;->p()Lcn/nubia/d/h;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    if-nez v0, :cond_1

    .line 280
    invoke-virtual {p0}, Lcn/nubia/d/f;->a()I

    move-result v0

    return v0

    .line 282
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/d/f;->k:Z

    if-eqz v1, :cond_2

    .line 283
    invoke-direct {p0, v0}, Lcn/nubia/d/f;->c(Lcn/nubia/d/h;)V

    :cond_2
    return v4

    :cond_3
    const-string v5, "ExifParser"

    if-ne v0, v2, :cond_8

    .line 288
    iget v0, p0, Lcn/nubia/d/f;->f:I

    const-wide/16 v6, 0x0

    if-nez v0, :cond_5

    .line 289
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v8

    .line 290
    invoke-direct {p0, v4}, Lcn/nubia/d/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_4
    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 292
    invoke-direct {p0, v4, v8, v9}, Lcn/nubia/d/f;->a(IJ)V

    goto :goto_1

    .line 298
    :cond_5
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/4 v2, 0x4

    if-lez v0, :cond_6

    .line 299
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    .line 300
    invoke-virtual {v4}, Lcn/nubia/d/b;->a()I

    move-result v4

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-ge v0, v2, :cond_7

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid size of link to next IFD: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_8

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid link to next IFD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_8
    :goto_1
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 313
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 316
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcn/nubia/d/f;->c(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    instance-of v4, v2, Lcn/nubia/d/f$b;

    if-eqz v4, :cond_b

    .line 323
    check-cast v2, Lcn/nubia/d/f$b;

    iget v4, v2, Lcn/nubia/d/f$b;->a:I

    iput v4, p0, Lcn/nubia/d/f;->f:I

    .line 324
    iget-object v4, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v4}, Lcn/nubia/d/b;->d()I

    move-result v4

    iput v4, p0, Lcn/nubia/d/f;->e:I

    .line 325
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/nubia/d/f;->d:I

    .line 327
    iget v4, p0, Lcn/nubia/d/f;->e:I

    mul-int/lit8 v4, v4, 0xc

    add-int/2addr v4, v0

    add-int/2addr v4, v3

    iget v0, p0, Lcn/nubia/d/f;->m:I

    if-le v4, v0, :cond_9

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid size of IFD "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/nubia/d/f;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 332
    :cond_9
    invoke-direct {p0}, Lcn/nubia/d/f;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/d/f;->k:Z

    .line 333
    iget-boolean v0, v2, Lcn/nubia/d/f$b;->b:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 336
    :cond_a
    invoke-virtual {p0}, Lcn/nubia/d/f;->b()V

    goto :goto_1

    .line 338
    :cond_b
    instance-of v0, v2, Lcn/nubia/d/f$c;

    if-eqz v0, :cond_c

    .line 339
    check-cast v2, Lcn/nubia/d/f$c;

    iput-object v2, p0, Lcn/nubia/d/f;->h:Lcn/nubia/d/f$c;

    .line 340
    iget v0, v2, Lcn/nubia/d/f$c;->b:I

    return v0

    .line 342
    :cond_c
    check-cast v2, Lcn/nubia/d/f$a;

    .line 343
    iget-object v0, v2, Lcn/nubia/d/f$a;->a:Lcn/nubia/d/h;

    iput-object v0, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    .line 344
    invoke-virtual {v0}, Lcn/nubia/d/h;->c()S

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_d

    .line 345
    iget-object v0, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    invoke-virtual {p0, v0}, Lcn/nubia/d/f;->b(Lcn/nubia/d/h;)V

    .line 346
    iget-object v0, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    invoke-direct {p0, v0}, Lcn/nubia/d/f;->c(Lcn/nubia/d/h;)V

    .line 348
    :cond_d
    iget-boolean v0, v2, Lcn/nubia/d/f$a;->b:Z

    if-eqz v0, :cond_8

    return v3

    .line 318
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to skip to data at: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", the file may be broken."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    return v1
.end method

.method protected a([B)I
    .locals 1

    .line 808
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0, p1}, Lcn/nubia/d/b;->read([B)I

    move-result p1

    return p1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 1

    .line 817
    sget-object v0, Lcn/nubia/d/f;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, v0}, Lcn/nubia/d/f;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    .line 827
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/d/b;->a(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method protected a(Lcn/nubia/d/h;)V
    .locals 4

    .line 513
    invoke-virtual {p1}, Lcn/nubia/d/h;->j()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v1}, Lcn/nubia/d/b;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcn/nubia/d/h;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/nubia/d/f$a;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcn/nubia/d/f$a;-><init>(Lcn/nubia/d/h;Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 5

    .line 364
    iget v0, p0, Lcn/nubia/d/f;->d:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/nubia/d/f;->e:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    .line 365
    iget-object v1, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v1}, Lcn/nubia/d/b;->a()I

    move-result v1

    if-le v1, v0, :cond_0

    return-void

    .line 369
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/d/f;->k:Z

    if-eqz v2, :cond_2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 371
    invoke-direct {p0}, Lcn/nubia/d/f;->p()Lcn/nubia/d/h;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    add-int/lit8 v1, v1, 0xc

    if-nez v2, :cond_1

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, v2}, Lcn/nubia/d/f;->c(Lcn/nubia/d/h;)V

    goto :goto_0

    .line 379
    :cond_2
    invoke-direct {p0, v0}, Lcn/nubia/d/f;->c(I)V

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v0

    .line 383
    iget v2, p0, Lcn/nubia/d/f;->f:I

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 384
    invoke-direct {p0, v2}, Lcn/nubia/d/f;->b(I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcn/nubia/d/f;->n()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_5

    .line 386
    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/d/f;->a(IJ)V

    :cond_5
    return-void
.end method

.method protected b(Lcn/nubia/d/h;)V
    .locals 5

    .line 647
    invoke-virtual {p1}, Lcn/nubia/d/h;->c()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 650
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    .line 651
    iget-object v1, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 652
    iget-object v1, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v2}, Lcn/nubia/d/b;->a()I

    move-result v2

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_4

    .line 654
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 655
    instance-of v1, v0, Lcn/nubia/d/f$c;

    const-string v2, "ExifParser"

    if-eqz v1, :cond_1

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thumbnail overlaps value for tag: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/d/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid thumbnail offset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 662
    :cond_1
    instance-of v1, v0, Lcn/nubia/d/f$b;

    const-string v3, " overlaps value for tag: \n"

    if-eqz v1, :cond_2

    .line 663
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ifd "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lcn/nubia/d/f$b;

    iget v0, v0, Lcn/nubia/d/f$b;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 664
    invoke-virtual {p1}, Lcn/nubia/d/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 665
    :cond_2
    instance-of v1, v0, Lcn/nubia/d/f$a;

    if-eqz v1, :cond_3

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tag value for tag: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v0, Lcn/nubia/d/f$a;

    iget-object v0, v0, Lcn/nubia/d/f$a;->a:Lcn/nubia/d/h;

    .line 667
    invoke-virtual {v0}, Lcn/nubia/d/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Lcn/nubia/d/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/nubia/d/f;->z:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    .line 671
    invoke-virtual {v1}, Lcn/nubia/d/b;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size of tag: \n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcn/nubia/d/h;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " setting count to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p1, v0}, Lcn/nubia/d/h;->c(I)V

    .line 679
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcn/nubia/d/h;->c()S

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 723
    :pswitch_1
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v2, v0, [Lcn/nubia/d/l;

    :goto_2
    if-ge v1, v0, :cond_5

    .line 725
    invoke-virtual {p0}, Lcn/nubia/d/f;->l()Lcn/nubia/d/l;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 727
    :cond_5
    invoke-virtual {p1, v2}, Lcn/nubia/d/h;->a([Lcn/nubia/d/l;)Z

    goto/16 :goto_7

    .line 715
    :pswitch_2
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v2, v0, [I

    :goto_3
    if-ge v1, v0, :cond_6

    .line 717
    invoke-virtual {p0}, Lcn/nubia/d/f;->k()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 719
    :cond_6
    invoke-virtual {p1, v2}, Lcn/nubia/d/h;->a([I)Z

    goto :goto_7

    .line 699
    :pswitch_3
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v2, v0, [Lcn/nubia/d/l;

    :goto_4
    if-ge v1, v0, :cond_7

    .line 701
    invoke-virtual {p0}, Lcn/nubia/d/f;->j()Lcn/nubia/d/l;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 703
    :cond_7
    invoke-virtual {p1, v2}, Lcn/nubia/d/h;->a([Lcn/nubia/d/l;)Z

    goto :goto_7

    .line 691
    :pswitch_4
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v2, v0, [J

    :goto_5
    if-ge v1, v0, :cond_8

    .line 693
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 695
    :cond_8
    invoke-virtual {p1, v2}, Lcn/nubia/d/h;->a([J)Z

    goto :goto_7

    .line 707
    :pswitch_5
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    if-ge v1, v0, :cond_9

    .line 709
    invoke-virtual {p0}, Lcn/nubia/d/f;->h()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 711
    :cond_9
    invoke-virtual {p1, v2}, Lcn/nubia/d/h;->a([I)Z

    goto :goto_7

    .line 688
    :pswitch_6
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/d/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/d/h;->a(Ljava/lang/String;)Z

    goto :goto_7

    .line 682
    :pswitch_7
    invoke-virtual {p1}, Lcn/nubia/d/h;->e()I

    move-result v0

    new-array v0, v0, [B

    .line 683
    invoke-virtual {p0, v0}, Lcn/nubia/d/f;->a([B)I

    .line 684
    invoke-virtual {p1, v0}, Lcn/nubia/d/h;->a([B)Z

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected c()Lcn/nubia/d/h;
    .locals 1

    .line 432
    iget-object v0, p0, Lcn/nubia/d/f;->g:Lcn/nubia/d/h;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .line 452
    iget v0, p0, Lcn/nubia/d/f;->f:I

    return v0
.end method

.method protected e()I
    .locals 1

    .line 462
    iget-object v0, p0, Lcn/nubia/d/f;->h:Lcn/nubia/d/f$c;

    iget v0, v0, Lcn/nubia/d/f$c;->a:I

    return v0
.end method

.method protected f()I
    .locals 2

    .line 480
    iget-object v0, p0, Lcn/nubia/d/f;->i:Lcn/nubia/d/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 482
    :cond_0
    invoke-virtual {v0, v1}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected g()I
    .locals 2

    .line 490
    iget-object v0, p0, Lcn/nubia/d/f;->j:Lcn/nubia/d/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 493
    :cond_0
    invoke-virtual {v0, v1}, Lcn/nubia/d/h;->e(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method protected h()I
    .locals 2

    .line 838
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->c()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method protected i()J
    .locals 4

    .line 846
    invoke-virtual {p0}, Lcn/nubia/d/f;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected j()Lcn/nubia/d/l;
    .locals 5

    .line 854
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v0

    .line 855
    invoke-virtual {p0}, Lcn/nubia/d/f;->i()J

    move-result-wide v2

    .line 856
    new-instance v4, Lcn/nubia/d/l;

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v4
.end method

.method protected k()I
    .locals 1

    .line 863
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->e()I

    move-result v0

    return v0
.end method

.method protected l()Lcn/nubia/d/l;
    .locals 5

    .line 870
    invoke-virtual {p0}, Lcn/nubia/d/f;->k()I

    move-result v0

    .line 871
    invoke-virtual {p0}, Lcn/nubia/d/f;->k()I

    move-result v1

    .line 872
    new-instance v2, Lcn/nubia/d/l;

    int-to-long v3, v0

    int-to-long v0, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcn/nubia/d/l;-><init>(JJ)V

    return-object v2
.end method

.method protected m()Ljava/nio/ByteOrder;
    .locals 1

    .line 914
    iget-object v0, p0, Lcn/nubia/d/f;->b:Lcn/nubia/d/b;

    invoke-virtual {v0}, Lcn/nubia/d/b;->b()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method
