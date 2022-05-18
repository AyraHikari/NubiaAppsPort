.class public final enum Lcom/android/gallery3d/filtershow/filters/y$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/gallery3d/filtershow/filters/y$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/gallery3d/filtershow/filters/y$c;

.field public static final enum c:Lcom/android/gallery3d/filtershow/filters/y$c;

.field public static final enum d:Lcom/android/gallery3d/filtershow/filters/y$c;

.field public static final enum e:Lcom/android/gallery3d/filtershow/filters/y$c;

.field private static final synthetic f:[Lcom/android/gallery3d/filtershow/filters/y$c;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/y$c;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/gallery3d/filtershow/filters/y$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/y$c;

    const-string v3, "NINETY"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/y$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->c:Lcom/android/gallery3d/filtershow/filters/y$c;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/y$c;

    const-string v5, "ONE_EIGHTY"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/android/gallery3d/filtershow/filters/y$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/gallery3d/filtershow/filters/y$c;->d:Lcom/android/gallery3d/filtershow/filters/y$c;

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/y$c;

    const-string v7, "TWO_SEVENTY"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/y$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/gallery3d/filtershow/filters/y$c;->e:Lcom/android/gallery3d/filtershow/filters/y$c;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/gallery3d/filtershow/filters/y$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/gallery3d/filtershow/filters/y$c;->f:[Lcom/android/gallery3d/filtershow/filters/y$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    return-void
.end method

.method static synthetic r(Lcom/android/gallery3d/filtershow/filters/y$c;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    return p0
.end method

.method public static t(I)Lcom/android/gallery3d/filtershow/filters/y$c;
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$c;->e:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$c;->d:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$c;->c:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$c;->b:Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/y$c;
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/filters/y$c;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$c;->f:[Lcom/android/gallery3d/filtershow/filters/y$c;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/filters/y$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/filters/y$c;

    return-object v0
.end method


# virtual methods
.method public s(Lcom/android/gallery3d/filtershow/filters/y$c;)Lcom/android/gallery3d/filtershow/filters/y$c;
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/y$c;->t(I)Lcom/android/gallery3d/filtershow/filters/y$c;

    move-result-object p1

    return-object p1
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->c:Lcom/android/gallery3d/filtershow/filters/y$c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/gallery3d/filtershow/filters/y$c;->e:Lcom/android/gallery3d/filtershow/filters/y$c;

    iget v1, v1, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/y$c;->a:I

    return v0
.end method
