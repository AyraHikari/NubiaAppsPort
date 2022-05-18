.class public final enum Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;
.super Ljava/lang/Enum;
.source "BaseLetterListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/BaseLetterListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Sorted_Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

.field public static final enum SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

.field public static final enum SORTED_TIME:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    const-string v1, "SORTED_TIME"

    invoke-direct {v0, v1, v2}, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_TIME:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    new-instance v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    const-string v1, "SORTED_LETTER"

    invoke-direct {v0, v1, v3}, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_TIME:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    aput-object v1, v0, v2

    sget-object v1, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->SORTED_LETTER:Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    aput-object v1, v0, v3

    sput-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->$VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    return-object v0
.end method

.method public static values()[Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->$VALUES:[Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    invoke-virtual {v0}, [Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/music/fragment/BaseLetterListFragment$Sorted_Type;

    return-object v0
.end method
