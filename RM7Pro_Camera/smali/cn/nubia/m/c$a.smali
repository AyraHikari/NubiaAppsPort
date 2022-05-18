.class public final enum Lcn/nubia/m/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/m/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/m/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/m/c$a;

.field public static final enum b:Lcn/nubia/m/c$a;

.field private static final synthetic c:[Lcn/nubia/m/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 77
    new-instance v0, Lcn/nubia/m/c$a;

    const-string v1, "LEFT_BOTTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/m/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/m/c$a;->a:Lcn/nubia/m/c$a;

    new-instance v1, Lcn/nubia/m/c$a;

    const-string v3, "RIGHT_BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/m/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/m/c$a;->b:Lcn/nubia/m/c$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/nubia/m/c$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 76
    sput-object v3, Lcn/nubia/m/c$a;->c:[Lcn/nubia/m/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/m/c$a;
    .locals 1

    .line 76
    const-class v0, Lcn/nubia/m/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/m/c$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/m/c$a;
    .locals 1

    .line 76
    sget-object v0, Lcn/nubia/m/c$a;->c:[Lcn/nubia/m/c$a;

    invoke-virtual {v0}, [Lcn/nubia/m/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/m/c$a;

    return-object v0
.end method
