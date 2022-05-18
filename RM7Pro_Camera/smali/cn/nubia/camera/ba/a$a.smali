.class public final enum Lcn/nubia/camera/ba/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/ba/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/ba/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/ba/a$a;

.field public static final enum b:Lcn/nubia/camera/ba/a$a;

.field public static final enum c:Lcn/nubia/camera/ba/a$a;

.field private static final synthetic d:[Lcn/nubia/camera/ba/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 153
    new-instance v0, Lcn/nubia/camera/ba/a$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/ba/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/camera/ba/a$a;->a:Lcn/nubia/camera/ba/a$a;

    .line 154
    new-instance v1, Lcn/nubia/camera/ba/a$a;

    const-string v3, "BSP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/camera/ba/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/camera/ba/a$a;->b:Lcn/nubia/camera/ba/a$a;

    .line 155
    new-instance v3, Lcn/nubia/camera/ba/a$a;

    const-string v5, "CTA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/camera/ba/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/camera/ba/a$a;->c:Lcn/nubia/camera/ba/a$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/camera/ba/a$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 152
    sput-object v5, Lcn/nubia/camera/ba/a$a;->d:[Lcn/nubia/camera/ba/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/ba/a$a;
    .locals 1

    .line 152
    const-class v0, Lcn/nubia/camera/ba/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/ba/a$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/ba/a$a;
    .locals 1

    .line 152
    sget-object v0, Lcn/nubia/camera/ba/a$a;->d:[Lcn/nubia/camera/ba/a$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/ba/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/ba/a$a;

    return-object v0
.end method
