.class public Landroidx/constraintlayout/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/b/d$a;,
        Landroidx/constraintlayout/b/d$b;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static b:Z = true

.field public static c:Z = true

.field public static d:Z = true

.field public static e:Z = true

.field public static f:Z = false

.field public static o:Landroidx/constraintlayout/b/e; = null

.field public static p:J = 0x0L

.field public static q:J = 0x0L

.field private static r:I = 0x3e8


# instance fields
.field private A:Landroidx/constraintlayout/b/d$a;

.field public g:Z

.field h:I

.field i:[Landroidx/constraintlayout/b/b;

.field public j:Z

.field public k:Z

.field l:I

.field m:I

.field final n:Landroidx/constraintlayout/b/c;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private t:Landroidx/constraintlayout/b/d$a;

.field private u:I

.field private v:I

.field private w:[Z

.field private x:I

.field private y:[Landroidx/constraintlayout/b/h;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/constraintlayout/b/d;->g:Z

    .line 53
    iput v0, p0, Landroidx/constraintlayout/b/d;->h:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Landroidx/constraintlayout/b/d;->s:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 65
    iput v2, p0, Landroidx/constraintlayout/b/d;->u:I

    .line 66
    iput v2, p0, Landroidx/constraintlayout/b/d;->v:I

    .line 67
    iput-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    .line 70
    iput-boolean v0, p0, Landroidx/constraintlayout/b/d;->j:Z

    .line 71
    iput-boolean v0, p0, Landroidx/constraintlayout/b/d;->k:Z

    new-array v1, v2, [Z

    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/b/d;->w:[Z

    const/4 v1, 0x1

    .line 76
    iput v1, p0, Landroidx/constraintlayout/b/d;->l:I

    .line 77
    iput v0, p0, Landroidx/constraintlayout/b/d;->m:I

    .line 78
    iput v2, p0, Landroidx/constraintlayout/b/d;->x:I

    .line 82
    sget v1, Landroidx/constraintlayout/b/d;->r:I

    new-array v1, v1, [Landroidx/constraintlayout/b/h;

    iput-object v1, p0, Landroidx/constraintlayout/b/d;->y:[Landroidx/constraintlayout/b/h;

    .line 83
    iput v0, p0, Landroidx/constraintlayout/b/d;->z:I

    new-array v0, v2, [Landroidx/constraintlayout/b/b;

    .line 95
    iput-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    .line 96
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->i()V

    .line 97
    new-instance v0, Landroidx/constraintlayout/b/c;

    invoke-direct {v0}, Landroidx/constraintlayout/b/c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    .line 98
    new-instance v1, Landroidx/constraintlayout/b/g;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/b/g;-><init>(Landroidx/constraintlayout/b/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    .line 99
    sget-boolean v1, Landroidx/constraintlayout/b/d;->f:Z

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Landroidx/constraintlayout/b/d$b;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/b/d$b;-><init>(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Landroidx/constraintlayout/b/b;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/b/b;-><init>(Landroidx/constraintlayout/b/c;)V

    iput-object v1, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    :goto_0
    return-void
.end method

.method private final a(Landroidx/constraintlayout/b/d$a;Z)I
    .locals 12

    .line 716
    sget-object p2, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 717
    iget-wide v2, p2, Landroidx/constraintlayout/b/e;->h:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/constraintlayout/b/e;->h:J

    :cond_0
    const/4 p2, 0x0

    move v2, p2

    .line 721
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/b/d;->l:I

    if-ge v2, v3, :cond_1

    .line 722
    iget-object v3, p0, Landroidx/constraintlayout/b/d;->w:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    move v3, v2

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 734
    sget-object v4, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v4, :cond_3

    .line 735
    iget-wide v5, v4, Landroidx/constraintlayout/b/e;->i:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/constraintlayout/b/e;->i:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 742
    iget v4, p0, Landroidx/constraintlayout/b/d;->l:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    return v3

    .line 749
    :cond_4
    invoke-interface {p1}, Landroidx/constraintlayout/b/d$a;->g()Landroidx/constraintlayout/b/h;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 750
    iget-object v4, p0, Landroidx/constraintlayout/b/d;->w:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/b/d$a;->g()Landroidx/constraintlayout/b/h;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/b/h;->b:I

    aput-boolean v5, v4, v6

    .line 752
    :cond_5
    iget-object v4, p0, Landroidx/constraintlayout/b/d;->w:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/b/d$a;->a(Landroidx/constraintlayout/b/d;[Z)Landroidx/constraintlayout/b/h;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 758
    iget-object v6, p0, Landroidx/constraintlayout/b/d;->w:[Z

    iget v7, v4, Landroidx/constraintlayout/b/h;->b:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_6

    return v3

    .line 764
    :cond_6
    iget-object v6, p0, Landroidx/constraintlayout/b/d;->w:[Z

    iget v7, v4, Landroidx/constraintlayout/b/h;->b:I

    aput-boolean v5, v6, v7

    :cond_7
    if-eqz v4, :cond_d

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    move v7, p2

    move v8, v6

    .line 785
    :goto_2
    iget v9, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v7, v9, :cond_b

    .line 786
    iget-object v9, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v9, v9, v7

    .line 787
    iget-object v10, v9, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 788
    iget-object v10, v10, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v11, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 792
    :cond_8
    iget-boolean v10, v9, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v10, :cond_9

    goto :goto_3

    .line 796
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 802
    iget-object v10, v9, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v10, v4}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_a

    .line 804
    iget v9, v9, Landroidx/constraintlayout/b/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v5

    if-gez v10, :cond_a

    move v8, v7

    move v5, v9

    :cond_a
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-le v8, v6, :cond_2

    .line 819
    iget-object v5, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v5, v5, v8

    .line 820
    iget-object v7, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iput v6, v7, Landroidx/constraintlayout/b/h;->c:I

    .line 821
    sget-object v6, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v6, :cond_c

    .line 822
    iget-wide v9, v6, Landroidx/constraintlayout/b/e;->j:J

    add-long/2addr v9, v0

    iput-wide v9, v6, Landroidx/constraintlayout/b/e;->j:J

    .line 824
    :cond_c
    invoke-virtual {v5, v4}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;)V

    .line 825
    iget-object v4, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iput v8, v4, Landroidx/constraintlayout/b/h;->c:I

    .line 826
    iget-object v4, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {v4, p0, v5}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;)V

    goto/16 :goto_1

    :cond_d
    move v2, v5

    goto/16 :goto_1

    :cond_e
    return v3
.end method

.method public static a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;
    .locals 0

    .line 1430
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object p0

    .line 1431
    invoke-virtual {p0, p1, p2, p3}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;

    move-result-object p0

    return-object p0
.end method

.method public static a()Landroidx/constraintlayout/b/e;
    .locals 1

    .line 111
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    return-object v0
.end method

.method private a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)Landroidx/constraintlayout/b/h;
    .locals 2

    .line 370
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v0, v0, Landroidx/constraintlayout/b/c;->c:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/h;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroidx/constraintlayout/b/h;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/b/h;-><init>(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/b/h;->b()V

    .line 376
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)V

    .line 378
    :goto_0
    iget p1, p0, Landroidx/constraintlayout/b/d;->z:I

    sget p2, Landroidx/constraintlayout/b/d;->r:I

    if-lt p1, p2, :cond_1

    mul-int/lit8 p2, p2, 0x2

    .line 379
    sput p2, Landroidx/constraintlayout/b/d;->r:I

    .line 380
    iget-object p1, p0, Landroidx/constraintlayout/b/d;->y:[Landroidx/constraintlayout/b/h;

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/constraintlayout/b/h;

    iput-object p1, p0, Landroidx/constraintlayout/b/d;->y:[Landroidx/constraintlayout/b/h;

    .line 382
    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/b/d;->y:[Landroidx/constraintlayout/b/h;

    iget p2, p0, Landroidx/constraintlayout/b/d;->z:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/constraintlayout/b/d;->z:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private b(Landroidx/constraintlayout/b/d$a;)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 879
    :goto_0
    iget v3, v0, Landroidx/constraintlayout/b/d;->m:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 880
    iget-object v3, v0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 881
    iget-object v3, v3, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v6, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    iget-object v3, v0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/constraintlayout/b/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_17

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_3
    if-nez v2, :cond_16

    .line 902
    sget-object v6, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_4

    .line 903
    iget-wide v9, v6, Landroidx/constraintlayout/b/e;->k:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/constraintlayout/b/e;->k:J

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 914
    :goto_4
    iget v14, v0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v10, v14, :cond_13

    .line 915
    iget-object v14, v0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v14, v14, v10

    .line 916
    iget-object v15, v14, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 917
    iget-object v15, v15, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    sget-object v1, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    if-ne v15, v1, :cond_5

    goto/16 :goto_b

    .line 922
    :cond_5
    iget-boolean v1, v14, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v1, :cond_6

    goto/16 :goto_b

    .line 925
    :cond_6
    iget v1, v14, Landroidx/constraintlayout/b/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_12

    .line 930
    sget-boolean v1, Landroidx/constraintlayout/b/d;->e:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_c

    .line 931
    iget-object v1, v14, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v1, :cond_12

    .line 933
    iget-object v7, v14, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/b/b$a;->a(I)Landroidx/constraintlayout/b/h;

    move-result-object v7

    .line 934
    iget-object v8, v14, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v8, v7}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result v8

    cmpg-float v16, v8, v4

    if-gtz v16, :cond_7

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v15, :cond_b

    .line 942
    iget-object v15, v7, Landroidx/constraintlayout/b/h;->g:[F

    aget v15, v15, v9

    div-float/2addr v15, v8

    cmpg-float v18, v15, v6

    if-gez v18, :cond_8

    if-eq v9, v13, :cond_9

    :cond_8
    if-le v9, v13, :cond_a

    .line 946
    :cond_9
    iget v12, v7, Landroidx/constraintlayout/b/h;->b:I

    move v13, v9

    move v11, v10

    move v6, v15

    :cond_a
    add-int/lit8 v9, v9, 0x1

    const/16 v15, 0x9

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_5

    :cond_c
    const/4 v1, 0x1

    .line 952
    :goto_8
    iget v5, v0, Landroidx/constraintlayout/b/d;->l:I

    if-ge v1, v5, :cond_12

    .line 953
    iget-object v5, v0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v5, v5, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    aget-object v5, v5, v1

    .line 954
    iget-object v7, v14, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v7, v5}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_d

    const/16 v9, 0x9

    goto :goto_a

    :cond_d
    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_9
    if-ge v8, v9, :cond_11

    .line 962
    iget-object v15, v5, Landroidx/constraintlayout/b/h;->g:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v6

    if-gez v17, :cond_e

    if-eq v8, v13, :cond_f

    :cond_e
    if-le v8, v13, :cond_10

    :cond_f
    move v12, v1

    move v13, v8

    move v11, v10

    move v6, v15

    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    :goto_b
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_4

    :cond_13
    const/4 v1, -0x1

    if-eq v11, v1, :cond_15

    .line 977
    iget-object v5, v0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v5, v5, v11

    .line 982
    iget-object v6, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iput v1, v6, Landroidx/constraintlayout/b/h;->c:I

    .line 983
    sget-object v1, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v1, :cond_14

    .line 984
    iget-wide v6, v1, Landroidx/constraintlayout/b/e;->j:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroidx/constraintlayout/b/e;->j:J

    .line 986
    :cond_14
    iget-object v1, v0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    aget-object v1, v1, v12

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;)V

    .line 987
    iget-object v1, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iput v11, v1, Landroidx/constraintlayout/b/h;->c:I

    .line 988
    iget-object v1, v5, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {v1, v0, v5}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;)V

    goto :goto_c

    :cond_15
    const/4 v2, 0x1

    .line 997
    :goto_c
    iget v1, v0, Landroidx/constraintlayout/b/d;->l:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_16
    move v1, v3

    goto :goto_d

    :cond_17
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private final b(Landroidx/constraintlayout/b/b;)V
    .locals 7

    .line 639
    sget-boolean v0, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iget p1, p1, Landroidx/constraintlayout/b/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;F)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    iget v1, p0, Landroidx/constraintlayout/b/d;->m:I

    aput-object p1, v0, v1

    .line 643
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iget v1, p0, Landroidx/constraintlayout/b/d;->m:I

    iput v1, v0, Landroidx/constraintlayout/b/h;->c:I

    .line 644
    iget v0, p0, Landroidx/constraintlayout/b/d;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/b/d;->m:I

    .line 645
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;)V

    .line 652
    :goto_0
    sget-boolean p1, Landroidx/constraintlayout/b/d;->c:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/constraintlayout/b/d;->g:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    move v0, p1

    .line 654
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v0, v1, :cond_7

    .line 655
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v1, :cond_6

    .line 659
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v1, v1, v0

    .line 660
    iget-object v2, v1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iget v3, v1, Landroidx/constraintlayout/b/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;F)V

    .line 661
    sget-boolean v2, Landroidx/constraintlayout/b/d;->f:Z

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v2, v2, Landroidx/constraintlayout/b/c;->a:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_2
    iget-object v2, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v2, v2, Landroidx/constraintlayout/b/c;->b:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    .line 666
    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 668
    :goto_3
    iget v4, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v1, v4, :cond_4

    .line 669
    iget-object v3, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v3, v1

    aput-object v5, v3, v4

    .line 670
    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iget v3, v3, Landroidx/constraintlayout/b/h;->c:I

    if-ne v3, v1, :cond_3

    .line 671
    iget-object v3, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iput v4, v3, Landroidx/constraintlayout/b/h;->c:I

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_3

    :cond_4
    if-ge v3, v4, :cond_5

    .line 676
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aput-object v2, v1, v3

    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 678
    iput v4, p0, Landroidx/constraintlayout/b/d;->m:I

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_7
    iput-boolean p1, p0, Landroidx/constraintlayout/b/d;->g:Z

    :cond_8
    return-void
.end method

.method private h()V
    .locals 5

    .line 140
    iget v0, p0, Landroidx/constraintlayout/b/d;->u:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/b/d;->u:I

    .line 141
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/b/b;

    iput-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    .line 142
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v0, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v2, p0, Landroidx/constraintlayout/b/d;->u:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/b/h;

    iput-object v1, v0, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    .line 143
    iget v0, p0, Landroidx/constraintlayout/b/d;->u:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/b/d;->w:[Z

    .line 144
    iput v0, p0, Landroidx/constraintlayout/b/d;->v:I

    .line 145
    iput v0, p0, Landroidx/constraintlayout/b/d;->x:I

    .line 146
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_0

    .line 147
    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->d:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->d:J

    .line 148
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->o:J

    iget v3, p0, Landroidx/constraintlayout/b/d;->u:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->o:J

    .line 149
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->o:J

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->x:J

    :cond_0
    return-void
.end method

.method private i()V
    .locals 4

    .line 157
    sget-boolean v0, Landroidx/constraintlayout/b/d;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 158
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v2, v0, :cond_3

    .line 159
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v3, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v3, v3, Landroidx/constraintlayout/b/c;->a:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v2, v0, :cond_3

    .line 167
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 169
    iget-object v3, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v3, v3, Landroidx/constraintlayout/b/c;->b:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v3, v0}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private j()V
    .locals 3

    const/4 v0, 0x0

    .line 1036
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v0, v1, :cond_0

    .line 1037
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v1, v1, v0

    .line 1038
    iget-object v2, v1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    iget v1, v1, Landroidx/constraintlayout/b/b;->b:F

    iput v1, v2, Landroidx/constraintlayout/b/h;->e:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)Landroidx/constraintlayout/b/h;
    .locals 5

    .line 348
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_0

    .line 349
    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->l:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->l:J

    .line 351
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/b/d;->v:I

    if-lt v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->h()V

    .line 354
    :cond_1
    sget-object v0, Landroidx/constraintlayout/b/h$a;->d:Landroidx/constraintlayout/b/h$a;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object p2

    .line 355
    iget v0, p0, Landroidx/constraintlayout/b/d;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/b/d;->h:I

    .line 356
    iget v1, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/b/d;->l:I

    .line 357
    iput v0, p2, Landroidx/constraintlayout/b/h;->b:I

    .line 358
    iput p1, p2, Landroidx/constraintlayout/b/h;->d:I

    .line 359
    iget-object p1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object p1, p1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v0, p0, Landroidx/constraintlayout/b/d;->h:I

    aput-object p2, p1, v0

    .line 360
    iget-object p1, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    invoke-interface {p1, p2}, Landroidx/constraintlayout/b/d$a;->d(Landroidx/constraintlayout/b/h;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/b/d;->v:I

    if-lt v1, v2, :cond_1

    .line 224
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->h()V

    .line 227
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/b/a/d;

    if-eqz v1, :cond_5

    .line 228
    check-cast p1, Landroidx/constraintlayout/b/a/d;

    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->g()Landroidx/constraintlayout/b/h;

    move-result-object v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/a/d;->a(Landroidx/constraintlayout/b/c;)V

    .line 231
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->g()Landroidx/constraintlayout/b/h;

    move-result-object p1

    move-object v0, p1

    .line 233
    :cond_2
    iget p1, v0, Landroidx/constraintlayout/b/h;->b:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroidx/constraintlayout/b/h;->b:I

    iget v2, p0, Landroidx/constraintlayout/b/d;->h:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object p1, p1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v2, v0, Landroidx/constraintlayout/b/h;->b:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    .line 236
    :cond_3
    iget p1, v0, Landroidx/constraintlayout/b/h;->b:I

    if-eq p1, v1, :cond_4

    .line 237
    invoke-virtual {v0}, Landroidx/constraintlayout/b/h;->b()V

    .line 239
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/b/d;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/constraintlayout/b/d;->h:I

    .line 240
    iget v1, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/b/d;->l:I

    .line 241
    iput p1, v0, Landroidx/constraintlayout/b/h;->b:I

    .line 242
    sget-object p1, Landroidx/constraintlayout/b/h$a;->a:Landroidx/constraintlayout/b/h$a;

    iput-object p1, v0, Landroidx/constraintlayout/b/h;->i:Landroidx/constraintlayout/b/h$a;

    .line 243
    iget-object p1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object p1, p1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v1, p0, Landroidx/constraintlayout/b/d;->h:I

    aput-object v0, p1, v1

    :cond_5
    return-object v0
.end method

.method public a(Landroidx/constraintlayout/b/a/e;Landroidx/constraintlayout/b/a/e;FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1445
    sget-object v3, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v5

    .line 1446
    sget-object v3, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v7

    .line 1447
    sget-object v3, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v3

    .line 1448
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v8

    .line 1450
    sget-object v1, Landroidx/constraintlayout/b/a/d$a;->b:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v1

    .line 1451
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->c:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v9

    .line 1452
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->d:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v12

    .line 1453
    sget-object v4, Landroidx/constraintlayout/b/a/d$a;->e:Landroidx/constraintlayout/b/a/d$a;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/b/a/e;->a(Landroidx/constraintlayout/b/a/d$a;)Landroidx/constraintlayout/b/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/b/d;->a(Ljava/lang/Object;)Landroidx/constraintlayout/b/h;

    move-result-object v10

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 1456
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 p1, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 1457
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;

    .line 1458
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v2

    .line 1460
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, p1

    .line 1461
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;

    .line 1462
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 557
    iget-wide v3, v0, Landroidx/constraintlayout/b/e;->f:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/b/e;->f:J

    .line 558
    iget-boolean v0, p1, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    iget-wide v3, v0, Landroidx/constraintlayout/b/e;->g:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/b/e;->g:J

    .line 562
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/b/d;->m:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/b/d;->x:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/b/d;->v:I

    if-lt v0, v4, :cond_3

    .line 563
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->h()V

    :cond_3
    const/4 v0, 0x0

    .line 571
    iget-boolean v4, p1, Landroidx/constraintlayout/b/b;->f:Z

    if-nez v4, :cond_c

    .line 573
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/b/b;->c(Landroidx/constraintlayout/b/d;)V

    .line 575
    invoke-virtual {p1}, Landroidx/constraintlayout/b/b;->e()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 580
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/b/b;->d()V

    .line 587
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 589
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->e()Landroidx/constraintlayout/b/h;

    move-result-object v4

    .line 590
    iput-object v4, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    .line 591
    iget v5, p0, Landroidx/constraintlayout/b/d;->m:I

    .line 592
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/d;->b(Landroidx/constraintlayout/b/b;)V

    .line 593
    iget v6, p0, Landroidx/constraintlayout/b/d;->m:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_9

    .line 595
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/b/d$a;->a(Landroidx/constraintlayout/b/d$a;)V

    .line 596
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    invoke-direct {p0, v0, v3}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/d$a;Z)I

    .line 597
    iget v0, v4, Landroidx/constraintlayout/b/h;->c:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_a

    .line 601
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    if-ne v0, v4, :cond_6

    .line 603
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/b/b;->c(Landroidx/constraintlayout/b/h;)Landroidx/constraintlayout/b/h;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 605
    sget-object v4, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v4, :cond_5

    .line 606
    iget-wide v5, v4, Landroidx/constraintlayout/b/e;->j:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/b/e;->j:J

    .line 608
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;)V

    .line 611
    :cond_6
    iget-boolean v0, p1, Landroidx/constraintlayout/b/b;->f:Z

    if-nez v0, :cond_7

    .line 612
    iget-object v0, p1, Landroidx/constraintlayout/b/b;->a:Landroidx/constraintlayout/b/h;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/b;)V

    .line 614
    :cond_7
    sget-boolean v0, Landroidx/constraintlayout/b/d;->f:Z

    if-eqz v0, :cond_8

    .line 615
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v0, v0, Landroidx/constraintlayout/b/c;->a:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v0, v0, Landroidx/constraintlayout/b/c;->b:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/b/f$a;->a(Ljava/lang/Object;)Z

    .line 619
    :goto_0
    iget v0, p0, Landroidx/constraintlayout/b/d;->m:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/constraintlayout/b/d;->m:I

    goto :goto_1

    :cond_9
    move v3, v0

    .line 624
    :cond_a
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/b/b;->a()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    move v0, v3

    :cond_c
    if-nez v0, :cond_d

    .line 634
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/d;->b(Landroidx/constraintlayout/b/b;)V

    :cond_d
    return-void
.end method

.method a(Landroidx/constraintlayout/b/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/b/d;->a(ILjava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object p3

    .line 324
    invoke-virtual {p1, p3, p2}, Landroidx/constraintlayout/b/b;->c(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    return-void
.end method

.method a(Landroidx/constraintlayout/b/d$a;)V
    .locals 5

    .line 494
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_0

    .line 495
    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->t:J

    .line 496
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->u:J

    iget v3, p0, Landroidx/constraintlayout/b/d;->l:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->u:J

    .line 497
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->v:J

    iget v3, p0, Landroidx/constraintlayout/b/d;->m:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->v:J

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/b/d;->b(Landroidx/constraintlayout/b/d$a;)I

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/d$a;Z)I

    .line 519
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->j()V

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;I)V
    .locals 5

    .line 1377
    sget-boolean v0, Landroidx/constraintlayout/b/d;->b:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/constraintlayout/b/h;->c:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    .line 1381
    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;F)V

    const/4 v0, 0x0

    .line 1382
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/b/d;->h:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1383
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1384
    iget-boolean v3, v1, Landroidx/constraintlayout/b/h;->m:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/constraintlayout/b/h;->n:I

    iget v4, p1, Landroidx/constraintlayout/b/h;->b:I

    if-ne v3, v4, :cond_0

    .line 1385
    iget v3, v1, Landroidx/constraintlayout/b/h;->o:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1393
    :cond_2
    iget v0, p1, Landroidx/constraintlayout/b/h;->c:I

    .line 1394
    iget v3, p1, Landroidx/constraintlayout/b/h;->c:I

    if-eq v3, v1, :cond_5

    .line 1395
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v0, v1, v0

    .line 1396
    iget-boolean v1, v0, Landroidx/constraintlayout/b/b;->f:Z

    if-eqz v1, :cond_3

    int-to-float p1, p2

    .line 1397
    iput p1, v0, Landroidx/constraintlayout/b/b;->b:F

    goto :goto_1

    .line 1399
    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {v1}, Landroidx/constraintlayout/b/b$a;->c()I

    move-result v1

    if-nez v1, :cond_4

    .line 1400
    iput-boolean v2, v0, Landroidx/constraintlayout/b/b;->f:Z

    int-to-float p1, p2

    .line 1401
    iput p1, v0, Landroidx/constraintlayout/b/b;->b:F

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    .line 1404
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    .line 1405
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    goto :goto_1

    .line 1409
    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    .line 1410
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    .line 1411
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    :goto_1
    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 1288
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1289
    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IFLandroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1291
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;I)Landroidx/constraintlayout/b/b;

    .line 1293
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->d()Landroidx/constraintlayout/b/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1216
    iput v2, v1, Landroidx/constraintlayout/b/h;->d:I

    .line 1217
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1219
    iget-object p1, v0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1220
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;II)V

    .line 1222
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IZ)V
    .locals 2

    .line 1229
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object p4

    .line 1230
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->d()Landroidx/constraintlayout/b/h;

    move-result-object v0

    const/4 v1, 0x0

    .line 1231
    iput v1, v0, Landroidx/constraintlayout/b/h;->d:I

    .line 1232
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    .line 1233
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;FI)V
    .locals 7

    .line 1300
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1301
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;F)Landroidx/constraintlayout/b/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 1303
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;I)Landroidx/constraintlayout/b/b;

    .line 1305
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 409
    check-cast p1, Landroidx/constraintlayout/b/a/d;

    .line 415
    invoke-virtual {p1}, Landroidx/constraintlayout/b/a/d;->g()Landroidx/constraintlayout/b/h;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 417
    iget p1, p1, Landroidx/constraintlayout/b/h;->e:F

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v2, v2, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v2, v2, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Landroidx/constraintlayout/b/h;->b()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->c:Landroidx/constraintlayout/b/f$a;

    iget-object v2, p0, Landroidx/constraintlayout/b/d;->y:[Landroidx/constraintlayout/b/h;

    iget v3, p0, Landroidx/constraintlayout/b/d;->z:I

    invoke-interface {v1, v2, v3}, Landroidx/constraintlayout/b/f$a;->a([Ljava/lang/Object;I)V

    .line 192
    iput v0, p0, Landroidx/constraintlayout/b/d;->z:I

    .line 194
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/b/d;->h:I

    .line 199
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    invoke-interface {v1}, Landroidx/constraintlayout/b/d$a;->f()V

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Landroidx/constraintlayout/b/d;->l:I

    move v1, v0

    .line 201
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v1, v2, :cond_4

    .line 202
    iget-object v2, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 203
    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/b/b;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->i()V

    .line 207
    iput v0, p0, Landroidx/constraintlayout/b/d;->m:I

    .line 208
    sget-boolean v0, Landroidx/constraintlayout/b/d;->f:Z

    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Landroidx/constraintlayout/b/d$b;

    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/b/d$b;-><init>(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    goto :goto_2

    .line 211
    :cond_5
    new-instance v0, Landroidx/constraintlayout/b/b;

    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/b/b;-><init>(Landroidx/constraintlayout/b/c;)V

    iput-object v0, p0, Landroidx/constraintlayout/b/d;->A:Landroidx/constraintlayout/b/d$a;

    :goto_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)V
    .locals 3

    .line 1247
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->d()Landroidx/constraintlayout/b/h;

    move-result-object v1

    const/4 v2, 0x0

    .line 1249
    iput v2, v1, Landroidx/constraintlayout/b/h;->d:I

    .line 1250
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1252
    iget-object p1, v0, Landroidx/constraintlayout/b/b;->e:Landroidx/constraintlayout/b/b$a;

    invoke-interface {p1, v1}, Landroidx/constraintlayout/b/b$a;->b(Landroidx/constraintlayout/b/h;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1253
    invoke-virtual {p0, v0, p1, p4}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;II)V

    .line 1255
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;IZ)V
    .locals 2

    .line 1262
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object p4

    .line 1263
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->d()Landroidx/constraintlayout/b/h;

    move-result-object v0

    const/4 v1, 0x0

    .line 1264
    iput v1, v0, Landroidx/constraintlayout/b/h;->d:I

    .line 1265
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/constraintlayout/b/b;->b(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    .line 1266
    invoke-virtual {p0, p4}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-void
.end method

.method public c()Landroidx/constraintlayout/b/b;
    .locals 5

    .line 254
    sget-boolean v0, Landroidx/constraintlayout/b/d;->f:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v0, v0, Landroidx/constraintlayout/b/c;->a:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/b;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroidx/constraintlayout/b/d$b;

    iget-object v3, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    invoke-direct {v0, p0, v3}, Landroidx/constraintlayout/b/d$b;-><init>(Landroidx/constraintlayout/b/d;Landroidx/constraintlayout/b/c;)V

    .line 258
    sget-wide v3, Landroidx/constraintlayout/b/d;->q:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/b/d;->q:J

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/b/b;->c()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v0, v0, Landroidx/constraintlayout/b/c;->b:Landroidx/constraintlayout/b/f$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/f$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/b/b;

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Landroidx/constraintlayout/b/b;

    iget-object v3, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    invoke-direct {v0, v3}, Landroidx/constraintlayout/b/b;-><init>(Landroidx/constraintlayout/b/c;)V

    .line 266
    sget-wide v3, Landroidx/constraintlayout/b/d;->p:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/constraintlayout/b/d;->p:J

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/b/b;->c()V

    .line 271
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/b/h;->a()V

    return-object v0
.end method

.method public c(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;II)Landroidx/constraintlayout/b/b;
    .locals 3

    .line 1336
    sget-boolean v0, Landroidx/constraintlayout/b/d;->b:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Landroidx/constraintlayout/b/h;->f:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/b/h;->c:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1340
    iget p2, p2, Landroidx/constraintlayout/b/h;->e:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/constraintlayout/b/h;->a(Landroidx/constraintlayout/b/d;F)V

    const/4 p1, 0x0

    return-object p1

    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/b/d;->c()Landroidx/constraintlayout/b/b;

    move-result-object v0

    .line 1363
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/h;Landroidx/constraintlayout/b/h;I)Landroidx/constraintlayout/b/b;

    if-eq p4, v1, :cond_1

    .line 1365
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/b/b;->a(Landroidx/constraintlayout/b/d;I)Landroidx/constraintlayout/b/b;

    .line 1367
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/b;)V

    return-object v0
.end method

.method public d()Landroidx/constraintlayout/b/h;
    .locals 5

    .line 276
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_0

    .line 277
    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->m:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->m:J

    .line 279
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/b/d;->v:I

    if-lt v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->h()V

    .line 282
    :cond_1
    sget-object v0, Landroidx/constraintlayout/b/h$a;->c:Landroidx/constraintlayout/b/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object v0

    .line 283
    iget v1, p0, Landroidx/constraintlayout/b/d;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/b/d;->h:I

    .line 284
    iget v2, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/b/d;->l:I

    .line 285
    iput v1, v0, Landroidx/constraintlayout/b/h;->b:I

    .line 286
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v2, p0, Landroidx/constraintlayout/b/d;->h:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public e()Landroidx/constraintlayout/b/h;
    .locals 5

    .line 291
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_0

    .line 292
    iget-wide v1, v0, Landroidx/constraintlayout/b/e;->n:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/b/e;->n:J

    .line 294
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/b/d;->v:I

    if-lt v0, v1, :cond_1

    .line 295
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->h()V

    .line 297
    :cond_1
    sget-object v0, Landroidx/constraintlayout/b/h$a;->c:Landroidx/constraintlayout/b/h$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/h$a;Ljava/lang/String;)Landroidx/constraintlayout/b/h;

    move-result-object v0

    .line 298
    iget v1, p0, Landroidx/constraintlayout/b/d;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/b/d;->h:I

    .line 299
    iget v2, p0, Landroidx/constraintlayout/b/d;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/b/d;->l:I

    .line 300
    iput v1, v0, Landroidx/constraintlayout/b/h;->b:I

    .line 301
    iget-object v1, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    iget-object v1, v1, Landroidx/constraintlayout/b/c;->d:[Landroidx/constraintlayout/b/h;

    iget v2, p0, Landroidx/constraintlayout/b/d;->h:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public f()V
    .locals 5

    .line 448
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    iget-wide v3, v0, Landroidx/constraintlayout/b/e;->e:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/b/e;->e:J

    .line 451
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    invoke-interface {v0}, Landroidx/constraintlayout/b/d$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->j()V

    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/b/d;->j:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/constraintlayout/b/d;->k:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/d$a;)V

    goto :goto_3

    .line 462
    :cond_3
    :goto_0
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_4

    .line 463
    iget-wide v3, v0, Landroidx/constraintlayout/b/e;->q:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/b/e;->q:J

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    .line 466
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/b/d;->m:I

    if-ge v3, v4, :cond_6

    .line 467
    iget-object v4, p0, Landroidx/constraintlayout/b/d;->i:[Landroidx/constraintlayout/b/b;

    aget-object v4, v4, v3

    .line 468
    iget-boolean v4, v4, Landroidx/constraintlayout/b/b;->f:Z

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    .line 474
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->t:Landroidx/constraintlayout/b/d$a;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/b/d;->a(Landroidx/constraintlayout/b/d$a;)V

    goto :goto_3

    .line 476
    :cond_7
    sget-object v0, Landroidx/constraintlayout/b/d;->o:Landroidx/constraintlayout/b/e;

    if-eqz v0, :cond_8

    .line 477
    iget-wide v3, v0, Landroidx/constraintlayout/b/e;->p:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/b/e;->p:J

    .line 479
    :cond_8
    invoke-direct {p0}, Landroidx/constraintlayout/b/d;->j()V

    :goto_3
    return-void
.end method

.method public g()Landroidx/constraintlayout/b/c;
    .locals 1

    .line 1171
    iget-object v0, p0, Landroidx/constraintlayout/b/d;->n:Landroidx/constraintlayout/b/c;

    return-object v0
.end method
