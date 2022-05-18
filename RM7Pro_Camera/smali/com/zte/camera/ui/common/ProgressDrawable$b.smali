.class final enum Lcom/zte/camera/ui/common/ProgressDrawable$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/common/ProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/camera/ui/common/ProgressDrawable$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field public static final enum b:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field public static final enum c:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field public static final enum d:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field public static final enum e:Lcom/zte/camera/ui/common/ProgressDrawable$b;

.field private static final synthetic f:[Lcom/zte/camera/ui/common/ProgressDrawable$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 321
    new-instance v0, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/camera/ui/common/ProgressDrawable$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/camera/ui/common/ProgressDrawable$b;->a:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    .line 322
    new-instance v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const-string v3, "PRERUN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zte/camera/ui/common/ProgressDrawable$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zte/camera/ui/common/ProgressDrawable$b;->b:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    .line 323
    new-instance v3, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const-string v5, "RUNNING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/zte/camera/ui/common/ProgressDrawable$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/zte/camera/ui/common/ProgressDrawable$b;->c:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    .line 324
    new-instance v5, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const-string v7, "PREEND"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/zte/camera/ui/common/ProgressDrawable$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/zte/camera/ui/common/ProgressDrawable$b;->d:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    .line 325
    new-instance v7, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const-string v9, "ENDING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/zte/camera/ui/common/ProgressDrawable$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/zte/camera/ui/common/ProgressDrawable$b;->e:Lcom/zte/camera/ui/common/ProgressDrawable$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/zte/camera/ui/common/ProgressDrawable$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 320
    sput-object v9, Lcom/zte/camera/ui/common/ProgressDrawable$b;->f:[Lcom/zte/camera/ui/common/ProgressDrawable$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/camera/ui/common/ProgressDrawable$b;
    .locals 1

    .line 320
    const-class v0, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/camera/ui/common/ProgressDrawable$b;

    return-object p0
.end method

.method public static values()[Lcom/zte/camera/ui/common/ProgressDrawable$b;
    .locals 1

    .line 320
    sget-object v0, Lcom/zte/camera/ui/common/ProgressDrawable$b;->f:[Lcom/zte/camera/ui/common/ProgressDrawable$b;

    invoke-virtual {v0}, [Lcom/zte/camera/ui/common/ProgressDrawable$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/camera/ui/common/ProgressDrawable$b;

    return-object v0
.end method
