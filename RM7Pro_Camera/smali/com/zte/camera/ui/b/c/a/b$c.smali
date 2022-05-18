.class public final enum Lcom/zte/camera/ui/b/c/a/b$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/camera/ui/b/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/camera/ui/b/c/a/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/zte/camera/ui/b/c/a/b$c;

.field public static final enum b:Lcom/zte/camera/ui/b/c/a/b$c;

.field private static final synthetic c:[Lcom/zte/camera/ui/b/c/a/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 96
    new-instance v0, Lcom/zte/camera/ui/b/c/a/b$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/camera/ui/b/c/a/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/camera/ui/b/c/a/b$c;->a:Lcom/zte/camera/ui/b/c/a/b$c;

    .line 98
    new-instance v1, Lcom/zte/camera/ui/b/c/a/b$c;

    const-string v3, "FADE_OUT_FADE_IN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/zte/camera/ui/b/c/a/b$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/zte/camera/ui/b/c/a/b$c;->b:Lcom/zte/camera/ui/b/c/a/b$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/zte/camera/ui/b/c/a/b$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 94
    sput-object v3, Lcom/zte/camera/ui/b/c/a/b$c;->c:[Lcom/zte/camera/ui/b/c/a/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/camera/ui/b/c/a/b$c;
    .locals 1

    .line 94
    const-class v0, Lcom/zte/camera/ui/b/c/a/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/camera/ui/b/c/a/b$c;

    return-object p0
.end method

.method public static values()[Lcom/zte/camera/ui/b/c/a/b$c;
    .locals 1

    .line 94
    sget-object v0, Lcom/zte/camera/ui/b/c/a/b$c;->c:[Lcom/zte/camera/ui/b/c/a/b$c;

    invoke-virtual {v0}, [Lcom/zte/camera/ui/b/c/a/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/camera/ui/b/c/a/b$c;

    return-object v0
.end method
