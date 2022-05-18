.class final enum Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;
.super Ljava/lang/Enum;
.source "Ln.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

.field public static final enum DEBUG:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

.field public static final enum ERROR:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

.field public static final enum INFO:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

.field public static final enum WARN:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->DEBUG:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->INFO:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v4}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->WARN:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    new-instance v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->ERROR:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->DEBUG:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->INFO:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->WARN:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    aput-object v1, v0, v4

    sget-object v1, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->ERROR:Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    aput-object v1, v0, v5

    sput-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->$VALUES:[Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    return-object v0
.end method

.method public static values()[Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->$VALUES:[Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    invoke-virtual {v0}, [Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/touping/NubiaPCMirror/InputFunctionUtils/Ln$Level;

    return-object v0
.end method
