.class final enum Lcn/nubia/gallery3d/data/Caption$DateType;
.super Ljava/lang/Enum;
.source "Caption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/data/Caption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/gallery3d/data/Caption$DateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/gallery3d/data/Caption$DateType;

.field public static final enum OTHER:Lcn/nubia/gallery3d/data/Caption$DateType;

.field public static final enum TODAY:Lcn/nubia/gallery3d/data/Caption$DateType;

.field public static final enum YESTERDAY:Lcn/nubia/gallery3d/data/Caption$DateType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Lcn/nubia/gallery3d/data/Caption$DateType;

    const-string v1, "TODAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/data/Caption$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->TODAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    new-instance v1, Lcn/nubia/gallery3d/data/Caption$DateType;

    const-string v3, "YESTERDAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/nubia/gallery3d/data/Caption$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/gallery3d/data/Caption$DateType;->YESTERDAY:Lcn/nubia/gallery3d/data/Caption$DateType;

    new-instance v3, Lcn/nubia/gallery3d/data/Caption$DateType;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcn/nubia/gallery3d/data/Caption$DateType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/gallery3d/data/Caption$DateType;->OTHER:Lcn/nubia/gallery3d/data/Caption$DateType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcn/nubia/gallery3d/data/Caption$DateType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 23
    sput-object v5, Lcn/nubia/gallery3d/data/Caption$DateType;->$VALUES:[Lcn/nubia/gallery3d/data/Caption$DateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/gallery3d/data/Caption$DateType;
    .locals 1

    .line 23
    const-class v0, Lcn/nubia/gallery3d/data/Caption$DateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/gallery3d/data/Caption$DateType;

    return-object p0
.end method

.method public static values()[Lcn/nubia/gallery3d/data/Caption$DateType;
    .locals 1

    .line 23
    sget-object v0, Lcn/nubia/gallery3d/data/Caption$DateType;->$VALUES:[Lcn/nubia/gallery3d/data/Caption$DateType;

    invoke-virtual {v0}, [Lcn/nubia/gallery3d/data/Caption$DateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/gallery3d/data/Caption$DateType;

    return-object v0
.end method
