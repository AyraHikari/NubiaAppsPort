.class final enum Lcom/android/gallery3d/filtershow/imageshow/s$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/imageshow/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/gallery3d/filtershow/imageshow/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/android/gallery3d/filtershow/imageshow/s$a;

.field public static final enum b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

.field private static final synthetic c:[Lcom/android/gallery3d/filtershow/imageshow/s$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/s$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/gallery3d/filtershow/imageshow/s$a;->a:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/s$a;

    const-string v3, "MOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/s$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/gallery3d/filtershow/imageshow/s$a;->b:Lcom/android/gallery3d/filtershow/imageshow/s$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/gallery3d/filtershow/imageshow/s$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/gallery3d/filtershow/imageshow/s$a;->c:[Lcom/android/gallery3d/filtershow/imageshow/s$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/gallery3d/filtershow/imageshow/s$a;
    .locals 1

    const-class v0, Lcom/android/gallery3d/filtershow/imageshow/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/gallery3d/filtershow/imageshow/s$a;

    return-object p0
.end method

.method public static values()[Lcom/android/gallery3d/filtershow/imageshow/s$a;
    .locals 1

    sget-object v0, Lcom/android/gallery3d/filtershow/imageshow/s$a;->c:[Lcom/android/gallery3d/filtershow/imageshow/s$a;

    invoke-virtual {v0}, [Lcom/android/gallery3d/filtershow/imageshow/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/gallery3d/filtershow/imageshow/s$a;

    return-object v0
.end method
