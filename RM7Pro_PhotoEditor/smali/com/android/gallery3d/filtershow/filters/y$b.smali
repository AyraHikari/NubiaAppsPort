.class public final enum Lcom/android/gallery3d/filtershow/filters/y$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/filters/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/gallery3d/filtershow/filters/y$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/android/gallery3d/filtershow/filters/y$b;

.field public static final enum c:Lcom/android/gallery3d/filtershow/filters/y$b;

.field public static final enum d:Lcom/android/gallery3d/filtershow/filters/y$b;

.field public static final enum e:Lcom/android/gallery3d/filtershow/filters/y$b;

.field private static final synthetic f:[Lcom/android/gallery3d/filtershow/filters/y$b;


# instance fields
.field a:C


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/y$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/16 v3, 0x4e

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/y$b;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/y$b;

    const-string v3, "VERTICAL"

    const/4 v4, 0x1

    const/16 v5, 0x56

    invoke-direct {v1, v3, v4, v5}, Lcom/android/gallery3d/filtershow/filters/y$b;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    new-instance v3, Lcom/android/gallery3d/filtershow/filters/y$b;

    const-string v5, "HORIZONTAL"

    const/4 v6, 0x2

    const/16 v7, 0x48

    invoke-direct {v3, v5, v6, v7}, Lcom/android/gallery3d/filtershow/filters/y$b;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    new-instance v5, Lcom/android/gallery3d/filtershow/filters/y$b;

    const-string v7, "BOTH"

    const/4 v8, 0x3

    const/16 v9, 0x42

    invoke-direct {v5, v7, v8, v9}, Lcom/android/gallery3d/filtershow/filters/y$b;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Lcom/android/gallery3d/filtershow/filters/y$b;->e:Lcom/android/gallery3d/filtershow/filters/y$b;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/gallery3d/filtershow/filters/y$b;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/gallery3d/filtershow/filters/y$b;->f:[Lcom/android/gallery3d/filtershow/filters/y$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-char p3, p0, Lcom/android/gallery3d/filtershow/filters/y$b;->a:C

    return-void
.end method

.method public static r(C)Lcom/android/gallery3d/filtershow/filters/y$b;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x48

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$b;->c:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$b;->b:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$b;->d:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/gallery3d/filtershow/filters/y$b;->e:Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/filters/y$b;
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/filters/y$b;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/filters/y$b;->f:[Lcom/android/gallery3d/filtershow/filters/y$b;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/filters/y$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/filters/y$b;

    return-object v0
.end method


# virtual methods
.method public s()C
    .locals 1

    iget-char v0, p0, Lcom/android/gallery3d/filtershow/filters/y$b;->a:C

    return v0
.end method
