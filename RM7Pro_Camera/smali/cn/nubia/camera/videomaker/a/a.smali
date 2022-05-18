.class public Lcn/nubia/camera/videomaker/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:[Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 36
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/videomaker/a/a;->f:[I

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/util/Pair;

    .line 45
    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x2d0

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x1e0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v6, 0x438

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    aput-object v2, v1, v7

    sput-object v1, Lcn/nubia/camera/videomaker/a/a;->a:[Landroid/util/Pair;

    new-array v1, v0, [Landroid/util/Pair;

    .line 52
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x280

    .line 54
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x3c0

    .line 55
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    sput-object v1, Lcn/nubia/camera/videomaker/a/a;->b:[Landroid/util/Pair;

    new-array v1, v7, [Landroid/util/Pair;

    .line 59
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x320

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    sput-object v1, Lcn/nubia/camera/videomaker/a/a;->c:[Landroid/util/Pair;

    new-array v1, v0, [Landroid/util/Pair;

    .line 65
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0xb0

    .line 67
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x90

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x160

    .line 68
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x120

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    sput-object v1, Lcn/nubia/camera/videomaker/a/a;->d:[Landroid/util/Pair;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/util/Pair;

    .line 72
    new-instance v2, Landroid/util/Pair;

    const/16 v8, 0x350

    .line 74
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v2, v8, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v5

    new-instance v2, Landroid/util/Pair;

    const/16 v4, 0x500

    .line 75
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v7

    new-instance v2, Landroid/util/Pair;

    const/16 v3, 0x780

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v0

    sput-object v1, Lcn/nubia/camera/videomaker/a/a;->e:[Landroid/util/Pair;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method
