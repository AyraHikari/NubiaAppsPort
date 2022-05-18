.class public final enum Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
.super Ljava/lang/Enum;
.source "BaseLetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fragment_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

.field public static final enum TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

.field public static final enum TYPE_ARTIST:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

.field public static final enum TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    const-string v1, "TYPE_ALBUM"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    const-string v1, "TYPE_ARTIST"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ARTIST:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    const-string v1, "TYPE_MUSIC"

    invoke-direct {v0, v1, v4}, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ALBUM:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_ARTIST:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    aput-object v1, v0, v3

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->TYPE_MUSIC:Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    aput-object v1, v0, v4

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->$VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->$VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    invoke-virtual {v0}, [Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/fragment/BaseLetterListFragment$Fragment_Type;

    return-object v0
.end method
