.class Lcn/nubia/notepad/utils/ContactInfos$Contact;
.super Ljava/lang/Object;
.source "ContactInfos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/utils/ContactInfos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Contact"
.end annotation


# instance fields
.field private mContactId:J

.field private mEmail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNum:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/notepad/utils/ContactInfos;


# direct methods
.method private constructor <init>(Lcn/nubia/notepad/utils/ContactInfos;)V
    .locals 1

    .prologue
    .line 22
    iput-object p1, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->this$0:Lcn/nubia/notepad/utils/ContactInfos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mPhoneNum:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mEmail:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mWebUrl:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/notepad/utils/ContactInfos;Lcn/nubia/notepad/utils/ContactInfos$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/notepad/utils/ContactInfos;
    .param p2, "x1"    # Lcn/nubia/notepad/utils/ContactInfos$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcn/nubia/notepad/utils/ContactInfos$Contact;-><init>(Lcn/nubia/notepad/utils/ContactInfos;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/utils/ContactInfos$Contact;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .prologue
    .line 22
    iget-wide v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcn/nubia/notepad/utils/ContactInfos$Contact;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/ContactInfos$Contact;
    .param p1, "x1"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mContactId:J

    return-wide p1
.end method

.method static synthetic access$100(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mWebUrl:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mEmail:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/notepad/utils/ContactInfos$Contact;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/utils/ContactInfos$Contact;

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/notepad/utils/ContactInfos$Contact;->mPhoneNum:Ljava/util/List;

    return-object v0
.end method
