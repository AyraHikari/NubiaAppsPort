.class public Lcn/nubia/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/b/e$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static x:Lcn/nubia/b/e;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:I

.field private r:[Ljava/lang/String;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcn/nubia/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Landroid/hardware/camera2/CameraManager;

.field private w:Landroid/content/Context;

.field private y:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/b/e;->b:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcn/nubia/b/e;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcn/nubia/b/e;->e:Ljava/util/ArrayList;

    .line 46
    iput-object v0, p0, Lcn/nubia/b/e;->f:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcn/nubia/b/e;->g:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcn/nubia/b/e;->h:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcn/nubia/b/e;->i:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcn/nubia/b/e;->k:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcn/nubia/b/e;->l:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcn/nubia/b/e;->m:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcn/nubia/b/e;->n:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcn/nubia/b/e;->o:I

    .line 56
    iput v0, p0, Lcn/nubia/b/e;->p:I

    .line 57
    iput v0, p0, Lcn/nubia/b/e;->q:I

    .line 59
    iput-object v1, p0, Lcn/nubia/b/e;->r:[Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    .line 61
    iput-object v1, p0, Lcn/nubia/b/e;->t:Ljava/util/HashMap;

    .line 62
    iput-object v1, p0, Lcn/nubia/b/e;->u:Ljava/util/HashMap;

    .line 63
    iput-object v1, p0, Lcn/nubia/b/e;->v:Landroid/hardware/camera2/CameraManager;

    .line 65
    iput-object v1, p0, Lcn/nubia/b/e;->w:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcn/nubia/b/g;->a()V

    .line 72
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/e;->u:Ljava/util/HashMap;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/e;->t:Ljava/util/HashMap;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/e;->e:Ljava/util/ArrayList;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    .line 77
    iput v0, p0, Lcn/nubia/b/e;->p:I

    .line 78
    iput v0, p0, Lcn/nubia/b/e;->o:I

    .line 79
    iput v0, p0, Lcn/nubia/b/e;->q:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 83
    invoke-direct {p0}, Lcn/nubia/b/e;-><init>()V

    .line 85
    iput-object p1, p0, Lcn/nubia/b/e;->w:Landroid/content/Context;

    const-string v0, "camera"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcn/nubia/b/e;->v:Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/b/e;->r:[Ljava/lang/String;

    .line 90
    array-length p1, p1

    iput p1, p0, Lcn/nubia/b/e;->o:I

    move p1, v0

    .line 92
    :goto_0
    iget v1, p0, Lcn/nubia/b/e;->o:I

    if-ge p1, v1, :cond_2

    .line 93
    iget-object v1, p0, Lcn/nubia/b/e;->r:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 94
    iget-object v2, p0, Lcn/nubia/b/e;->v:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 95
    new-instance v3, Lcn/nubia/b/b;

    invoke-direct {v3, v2}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 96
    iget-object v4, p0, Lcn/nubia/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v4, p0, Lcn/nubia/b/e;->u:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 100
    invoke-virtual {v3}, Lcn/nubia/b/b;->m()I

    move-result v4

    .line 101
    invoke-virtual {v3}, Lcn/nubia/b/b;->n()Ljava/util/Set;

    move-result-object v5

    .line 102
    invoke-direct {p0, v1, v4}, Lcn/nubia/b/e;->b(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 103
    invoke-direct {p0, v1, v2, v4}, Lcn/nubia/b/e;->a(Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    if-eqz v5, :cond_1

    .line 104
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 105
    invoke-direct {p0, v1, v2}, Lcn/nubia/b/e;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :cond_1
    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/b/e;->a(Ljava/lang/String;ILcn/nubia/b/b;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 115
    :cond_2
    iget-object p1, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 116
    iget-object p1, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method static synthetic a(Lcn/nubia/b/e;)Ljava/util/HashMap;
    .locals 0

    .line 32
    iget-object p0, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcn/nubia/b/e;

    monitor-enter v0

    .line 373
    :try_start_0
    new-instance v1, Lcn/nubia/b/e;

    invoke-direct {v1, p0}, Lcn/nubia/b/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/nubia/b/e;->x:Lcn/nubia/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 165
    iput-object p1, p0, Lcn/nubia/b/e;->h:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lcn/nubia/b/e;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 168
    iput-object p1, p0, Lcn/nubia/b/e;->i:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcn/nubia/b/e;->g:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    if-ne p3, v0, :cond_0

    .line 176
    iput-object p1, p0, Lcn/nubia/b/e;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_1

    .line 178
    iput-object p1, p0, Lcn/nubia/b/e;->f:Ljava/lang/String;

    goto :goto_0

    .line 180
    :cond_1
    iput-object p1, p0, Lcn/nubia/b/e;->f:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_5

    if-ne p3, v0, :cond_3

    .line 184
    iput-object p1, p0, Lcn/nubia/b/e;->i:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne p3, v1, :cond_4

    .line 186
    iput-object p1, p0, Lcn/nubia/b/e;->g:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_4
    iput-object p1, p0, Lcn/nubia/b/e;->g:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;ILcn/nubia/b/b;)V
    .locals 7

    .line 121
    invoke-virtual {p3}, Lcn/nubia/b/b;->o()I

    move-result v0

    .line 122
    invoke-virtual {p3}, Lcn/nubia/b/b;->q()D

    move-result-wide v1

    const-wide v3, 0x4056800000000000L    # 90.0

    const/4 p3, 0x1

    const/16 v5, 0x8

    if-ne p2, p3, :cond_8

    .line 124
    iget-object p2, p0, Lcn/nubia/b/e;->b:Ljava/lang/String;

    sget-object v6, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-ne p2, v6, :cond_0

    .line 125
    iput-object p1, p0, Lcn/nubia/b/e;->b:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_0
    iget-object p2, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 128
    iget-object p2, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    and-int/lit8 p2, v0, 0x8

    if-ne p2, v5, :cond_2

    .line 132
    iput-object p1, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    goto :goto_1

    :cond_2
    and-int/lit8 p2, v0, 0x10

    const/16 v5, 0x10

    if-ne p2, v5, :cond_3

    .line 134
    iput-object p1, p0, Lcn/nubia/b/e;->l:Ljava/lang/String;

    goto :goto_1

    :cond_3
    and-int/lit8 p2, v0, 0x40

    const/16 v5, 0x40

    if-ne p2, v5, :cond_4

    .line 136
    iput-object p1, p0, Lcn/nubia/b/e;->m:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 p2, 0x200

    and-int/2addr v0, p2

    if-ne v0, p2, :cond_5

    .line 138
    iput-object p1, p0, Lcn/nubia/b/e;->n:Ljava/lang/String;

    goto :goto_1

    :cond_5
    cmpl-double p2, v1, v3

    if-ltz p2, :cond_6

    .line 140
    iput-object p1, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpg-double p2, v1, v3

    if-gez p2, :cond_7

    .line 142
    iput-object p1, p0, Lcn/nubia/b/e;->l:Ljava/lang/String;

    .line 144
    :cond_7
    :goto_1
    iget p1, p0, Lcn/nubia/b/e;->p:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn/nubia/b/e;->p:I

    goto :goto_4

    :cond_8
    if-nez p2, :cond_d

    .line 146
    iget-object p2, p0, Lcn/nubia/b/e;->c:Ljava/lang/String;

    sget-object v6, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-ne p2, v6, :cond_9

    .line 147
    iput-object p1, p0, Lcn/nubia/b/e;->c:Ljava/lang/String;

    goto :goto_2

    .line 149
    :cond_9
    iget-object p2, p0, Lcn/nubia/b/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 150
    iget-object p2, p0, Lcn/nubia/b/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    and-int/lit8 p2, v0, 0x8

    if-ne p2, v5, :cond_b

    .line 155
    iput-object p1, p0, Lcn/nubia/b/e;->k:Ljava/lang/String;

    goto :goto_3

    :cond_b
    cmpl-double p2, v1, v3

    if-ltz p2, :cond_c

    .line 157
    iput-object p1, p0, Lcn/nubia/b/e;->k:Ljava/lang/String;

    .line 159
    :cond_c
    :goto_3
    iget p1, p0, Lcn/nubia/b/e;->q:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn/nubia/b/e;->q:I

    :cond_d
    :goto_4
    return-void
.end method

.method private a(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 389
    new-instance v0, Lcn/nubia/b/f;

    const-class v1, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 390
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/f;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-string v2, "com.nubia.chi.dual_camera_id"

    invoke-virtual {v0, v2, v1}, Lcn/nubia/b/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 392
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, ";"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    if-lez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 408
    :cond_1
    iget p2, p0, Lcn/nubia/b/e;->o:I

    if-lez p2, :cond_2

    iget-object p2, p0, Lcn/nubia/b/e;->y:[Ljava/lang/String;

    if-nez p2, :cond_2

    .line 409
    iget-object p2, p0, Lcn/nubia/b/e;->r:[Ljava/lang/String;

    aget-object p2, p2, v1

    invoke-virtual {p0, p2}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/nubia/b/e;->a(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/b/e;->y:[Ljava/lang/String;

    .line 412
    :cond_2
    iget-object p2, p0, Lcn/nubia/b/e;->y:[Ljava/lang/String;

    if-nez p2, :cond_3

    return v1

    .line 415
    :cond_3
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p2, v3

    .line 416
    invoke-static {v4, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static declared-synchronized q()Lcn/nubia/b/e;
    .locals 2

    const-class v0, Lcn/nubia/b/e;

    monitor-enter v0

    .line 382
    :try_start_0
    sget-object v1, Lcn/nubia/b/e;->x:Lcn/nubia/b/e;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Lcn/nubia/b/e;

    invoke-direct {v1}, Lcn/nubia/b/e;-><init>()V

    sput-object v1, Lcn/nubia/b/e;->x:Lcn/nubia/b/e;

    .line 385
    :cond_0
    sget-object v1, Lcn/nubia/b/e;->x:Lcn/nubia/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 2

    .line 283
    iget-object v0, p0, Lcn/nubia/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    if-nez v0, :cond_0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcn/nubia/b/e;->v:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 288
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 290
    :goto_0
    iget-object v1, p0, Lcn/nubia/b/e;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Lcn/nubia/b/d$c;Landroid/os/Handler;)Z
    .locals 3

    .line 326
    invoke-static {}, Lcn/nubia/b/g;->a()V

    .line 327
    iget-object v0, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has already opened by this Camera."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraHolder"

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Lcn/nubia/b/e$1;

    invoke-direct {v0, p0, p2, p1}, Lcn/nubia/b/e$1;-><init>(Lcn/nubia/b/e;Lcn/nubia/b/d$c;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    .line 337
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/e;->w:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 340
    :cond_1
    iget-object v0, p0, Lcn/nubia/b/e;->v:Landroid/hardware/camera2/CameraManager;

    new-instance v2, Lcn/nubia/b/e$a;

    invoke-direct {v2, p0, p2}, Lcn/nubia/b/e$a;-><init>(Lcn/nubia/b/e;Lcn/nubia/b/d$c;)V

    invoke-virtual {v0, p1, v2, p3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return v1
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcn/nubia/b/e;->r:[Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcn/nubia/b/b;
    .locals 2

    .line 297
    iget-object v0, p0, Lcn/nubia/b/e;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/b;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcn/nubia/b/b;

    invoke-virtual {p0, p1}, Lcn/nubia/b/e;->a(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/b/b;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 300
    iget-object v1, p0, Lcn/nubia/b/e;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcn/nubia/b/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcn/nubia/b/d;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 314
    :cond_0
    iget-object v0, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/b/d;

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcn/nubia/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcn/nubia/b/e;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/b/d;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lcn/nubia/b/d;->b()V

    .line 361
    iget-object v0, p0, Lcn/nubia/b/e;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcn/nubia/b/e;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/nubia/b/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcn/nubia/b/e;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/b/e;->h:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcn/nubia/b/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 242
    iget v0, p0, Lcn/nubia/b/e;->o:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 250
    iget v0, p0, Lcn/nubia/b/e;->p:I

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcn/nubia/b/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcn/nubia/b/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcn/nubia/b/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcn/nubia/b/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcn/nubia/b/e;->n:Ljava/lang/String;

    return-object v0
.end method
