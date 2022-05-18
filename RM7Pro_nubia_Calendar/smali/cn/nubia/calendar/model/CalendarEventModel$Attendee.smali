.class public Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
.super Ljava/lang/Object;
.source "CalendarEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/model/CalendarEventModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attendee"
.end annotation


# instance fields
.field public mEmail:Ljava/lang/String;

.field public mIdNamespace:Ljava/lang/String;

.field public mIdentity:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 87
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "identity"    # Ljava/lang/String;
    .param p5, "idNamespace"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 94
    iput p3, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mStatus:I

    .line 95
    iput-object p4, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdentity:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mIdNamespace:Ljava/lang/String;

    .line 97
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    if-ne p0, p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    instance-of v3, p1, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    if-nez v3, :cond_2

    move v1, v2

    .line 63
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 65
    check-cast v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;

    .line 66
    .local v0, "other":Lcn/nubia/calendar/model/CalendarEventModel$Attendee;
    iget-object v3, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v4, v0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 67
    goto :goto_0
.end method

.method getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/model/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
