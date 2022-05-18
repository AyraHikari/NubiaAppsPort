.class public final enum Lcom/android/gallery3d/filtershow/filters/z$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/gallery3d/filtershow/filters/z$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/gallery3d/filtershow/filters/z$b;

.field public static final enum c:Lcom/android/gallery3d/filtershow/filters/z$b;

.field public static final enum d:Lcom/android/gallery3d/filtershow/filters/z$b;

.field public static final enum e:Lcom/android/gallery3d/filtershow/filters/z$b;

.field private static final synthetic f:[Lcom/android/gallery3d/filtershow/filters/z$b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/z$b;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/gallery3d/filtershow/filters/z$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/z$b;->b:Lcom/android/gallery3d/filtershow/filters/z$b;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/z$b;

    const-string v3, "NINETY"

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/z$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/z$b;->c:Lcom/android/gallery3d/filtershow/filters/z$b;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/z$b;

    const-string v5, "ONE_EIGHTY"

    const/4 v6, 0x2

    const/16 v7, 0xb4

    invoke-direct {v3, v5, v6, v7}, Lcom/android/gallery3d/filtershow/filters/z$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/gallery3d/filtershow/filters/z$b;->d:Lcom/android/gallery3d/filtershow/filters/z$b;

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/z$b;

    const-string v7, "TWO_SEVENTY"

    const/4 v8, 0x3

    const/16 v9, 0x10e

    invoke-direct {v5, v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/z$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/gallery3d/filtershow/filters/z$b;->e:Lcom/android/gallery3d/filtershow/filters/z$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/gallery3d/filtershow/filters/z$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/gallery3d/filtershow/filters/z$b;->f:[Lcom/android/gallery3d/filtershow/filters/z$b;

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

    iput p3, p0, Lcom/android/gallery3d/filtershow/filters/z$b;->a:I

    return-void
.end method

.method public static r(Lcom/android/gallery3d/filtershow/filters/z$b;Lcom/android/gallery3d/filtershow/filters/z$b;)Lcom/android/gallery3d/filtershow/filters/z$b;
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/filters/z$b;->a:I

    iget p1, p1, Lcom/android/gallery3d/filtershow/filters/z$b;->a:I

    add-int/2addr p0, p1

    rem-int/lit16 p0, p0, 0x168

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/filters/z$b;->s(I)Lcom/android/gallery3d/filtershow/filters/z$b;

    move-result-object p0

    return-object p0
.end method

.method public static s(I)Lcom/android/gallery3d/filtershow/filters/z$b;
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
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/z$b;->e:Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/z$b;->d:Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/z$b;->c:Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/z$b;->b:Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/z$b;
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/filters/z$b;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/z$b;->f:[Lcom/android/gallery3d/filtershow/filters/z$b;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/filters/z$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/filters/z$b;

    return-object v0
.end method


# virtual methods
.method public t()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/filters/z$b;->a:I

    return v0
.end method
