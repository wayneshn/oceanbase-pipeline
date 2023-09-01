
import { jitsuAnalytics } from "@jitsu/js";

export async function track(userEmail:string, event: string) {
    const analytics = jitsuAnalytics({
        host: "https://3216-wayneshn-oceanbasepipel-yr7spzlvu3y.ws-eu104.gitpod.io",
        // Browser Write Key configured on Jitsu Site entity.
        // If no Browser Write Key is added for Site entity, Site ID value can be used a Write Key.
        // On Jitsu.Cloud can be omitted if Site has explicitly mapped domain name that is used in host parameter
        writeKey: "GxFPFzFt4qotukMTqS5oKDz5H4Q5vA3f:aiX6HtNcT3piSkItJCvnR27M7FTa1OTS",
    });
    // await analytics.identify(userEmail, {email: userEmail, eventType: event});
    await analytics.track(event, {userEmail: userEmail})
}